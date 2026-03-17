# Claude Code Notification Hook

A macOS notification system that alerts you when Claude Code needs permission to use a tool.

## Features

- 🔔 Native macOS notifications
- 🔊 Customizable alert sound ("Blow" by default)
- 🎯 Auto-focus on iTerm2
- ⚡ Instant permission feedback

## Installation

### 1. Create hooks directory
```bash
mkdir -p ~/.claude/hooks
```

### 2. Add hook script
Copy `notification.sh` to `~/.claude/hooks/notification.sh`

### 3. Make it executable
```bash
chmod +x ~/.claude/hooks/notification.sh
```

### 4. Configure Claude Code
Edit `~/.claude/settings.json` and add to the `hooks` section:

```json
"Notification": [
  {
    "matcher": "*",
    "hooks": [
      {
        "type": "command",
        "command": "$HOME/.claude/hooks/notification.sh"
      }
    ]
  }
]
```

## Customization

### Change Sound
Edit `notification.sh` and replace `"Blow"` with any of these:
- `"Glass"`, `"Ping"`, `"Pop"`, `"Bottle"`, `"Basso"`, `"Funk"`, `"Submarine"`, `"Tink"`

### Change Terminal App
Edit `notification.sh` and replace `"iTerm"` with:
- `"Terminal"` - macOS built-in
- `"Visual Studio Code"`
- Any other terminal app

### Disable Sound
Remove `sound name \"Blow\"` from the osascript line

## Testing

Remove a permission from `~/.claude/settings.json` to trigger a permission request:

```bash
# Edit settings.json and remove: "Bash(bash *)"
```

Then run a bash command - you'll see the notification appear.

## Files

- `notification.sh` - Main hook script
- `README.md` - This documentation
