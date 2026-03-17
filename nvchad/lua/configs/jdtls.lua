local mason_registry = require "mason-registry"
local jdtls = require "jdtls"

-- Ensure mason registry is up to date
if not mason_registry.is_installed "jdtls" then
  vim.notify("jdtls not installed. Run :MasonInstall jdtls java-debug-adapter java-test", vim.log.levels.WARN)
  return
end

-- Paths
local jdtls_path = mason_registry.get_package("jdtls"):get_install_path()
local launcher_jar = vim.fn.glob(jdtls_path .. "/plugins/org.eclipse.equinox.launcher_*.jar")
local config_dir = jdtls_path .. "/config_mac"

-- Workspace directory (one per project)
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.stdpath "data" .. "/jdtls-workspace/" .. project_name

-- Debug/test bundles
local bundles = {}

if mason_registry.is_installed "java-debug-adapter" then
  local java_debug_path = mason_registry.get_package("java-debug-adapter"):get_install_path()
  local java_debug_jars = vim.split(
    vim.fn.glob(java_debug_path .. "/extension/server/com.microsoft.java.debug.plugin-*.jar", true),
    "\n"
  )
  if java_debug_jars[1] ~= "" then
    vim.list_extend(bundles, java_debug_jars)
  end
end

if mason_registry.is_installed "java-test" then
  local java_test_path = mason_registry.get_package("java-test"):get_install_path()
  local java_test_jars = vim.split(
    vim.fn.glob(java_test_path .. "/extension/server/*.jar", true),
    "\n"
  )
  if java_test_jars[1] ~= "" then
    vim.list_extend(bundles, java_test_jars)
  end
end

-- Ensure root_dir exists (otherwise jdtls won't attach)
local root_dir = require("jdtls.setup").find_root { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
if not root_dir then
  vim.notify("jdtls: no project root found (needs .git, pom.xml, build.gradle, etc.)", vim.log.levels.WARN)
  return
end

-- Ensure launcher jar exists
if launcher_jar == "" then
  vim.notify("jdtls: launcher jar not found in " .. jdtls_path, vim.log.levels.WARN)
  return
end

-- Extended capabilities for debugging
local extendedClientCapabilities = jdtls.extendedClientCapabilities
extendedClientCapabilities.resolveAdditionalTextEditsSupport = true

local config = {
  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xmx1g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",
    "-jar", launcher_jar,
    "-configuration", config_dir,
    "-data", workspace_dir,
  },

  root_dir = root_dir,

  settings = {
    java = {
      signatureHelp = { enabled = true },
      import = { enabled = true },
      rename = { enabled = true },
      eclipse = { downloadSources = true },
      maven = { downloadSources = true },
      configuration = {
        updateBuildConfiguration = "interactive",
      },
      implementationsCodeLens = { enabled = true },
      referencesCodeLens = { enabled = true },
      references = { includeDecompiled = true },
      inlayHints = {
        parameterNames = { enabled = "all" },
      },
      format = {
        enabled = false, -- we use google-java-format via conform
      },
      completion = {
        favoriteStaticMembers = {
          "org.hamcrest.MatcherAssert.assertThat",
          "org.hamcrest.Matchers.*",
          "org.hamcrest.CoreMatchers.*",
          "org.junit.jupiter.api.Assertions.*",
          "java.util.Objects.requireNonNull",
          "java.util.Objects.requireNonNullElse",
          "org.mockito.Mockito.*",
        },
        importOrder = {
          "java",
          "javax",
          "com",
          "org",
        },
      },
      sources = {
        organizeImports = {
          starThreshold = 9999,
          staticStarThreshold = 9999,
        },
      },
      codeGeneration = {
        toString = {
          template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}",
        },
        useBlocks = true,
      },
    },
  },

  init_options = {
    bundles = bundles,
    extendedClientCapabilities = extendedClientCapabilities,
  },

  on_attach = function(client, bufnr)
    -- Setup debugging after LSP attaches
    jdtls.setup_dap { hotcodereplace = "auto" }
    require("jdtls.dap").setup_dap_main_class_configs()

    local opts = { buffer = bufnr }

    -- Java-specific keymaps
    vim.keymap.set("n", "<leader>jo", function() jdtls.organize_imports() end, vim.tbl_extend("force", opts, { desc = "Organize Imports" }))
    vim.keymap.set("n", "<leader>jv", function() jdtls.extract_variable() end, vim.tbl_extend("force", opts, { desc = "Extract Variable" }))
    vim.keymap.set("v", "<leader>jv", function() jdtls.extract_variable(true) end, vim.tbl_extend("force", opts, { desc = "Extract Variable" }))
    vim.keymap.set("n", "<leader>jc", function() jdtls.extract_constant() end, vim.tbl_extend("force", opts, { desc = "Extract Constant" }))
    vim.keymap.set("v", "<leader>jc", function() jdtls.extract_constant(true) end, vim.tbl_extend("force", opts, { desc = "Extract Constant" }))
    vim.keymap.set("v", "<leader>jm", function() jdtls.extract_method(true) end, vim.tbl_extend("force", opts, { desc = "Extract Method" }))
    vim.keymap.set("n", "<leader>jt", function() jdtls.test_nearest_method() end, vim.tbl_extend("force", opts, { desc = "Test Nearest Method" }))
    vim.keymap.set("n", "<leader>jT", function() jdtls.test_class() end, vim.tbl_extend("force", opts, { desc = "Test Class" }))
    vim.keymap.set("n", "<leader>ju", function() jdtls.update_project_config() end, vim.tbl_extend("force", opts, { desc = "Update Project Config" }))
  end,
}

jdtls.start_or_attach(config)
