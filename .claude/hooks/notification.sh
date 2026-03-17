#!/bin/bash
# Claude Code Notification Hook - Permission Requests Only

# Read the JSON input from stdin
INPUT=$(cat)

# Extract the notification type
NOTIFICATION_TYPE=$(echo "$INPUT" | jq -r '.notification_type // empty')

# Only handle permission prompt notifications
if [[ "$NOTIFICATION_TYPE" == "permission_prompt" ]]; then
  # Extract the message
  MESSAGE=$(echo "$INPUT" | jq -r '.message // "Permission needed"')

  # Display macOS notification with Blow sound
  osascript -e "display notification \"$MESSAGE\" with title \"Claude Code Permission\" sound name \"Blow\""

  # Bring iTerm2 to focus
  osascript -e "activate application \"iTerm\""
fi
