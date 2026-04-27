#!/bin/bash

# OpenClaw Agent Behavior Template Installation Script
# Interactive installer that prompts for agent and user information

set -e

echo "🦾 Installing OpenClaw Agent Behavior Template..."
echo ""

# Check if target directory is provided
if [ $# -eq 0 ]; then
    echo "Usage: $0 <target-agent-directory>"
    echo "Example: $0 ~/my-new-agent"
    exit 1
fi

TARGET_DIR="$1"

# Create target directory if it doesn't exist
mkdir -p "$TARGET_DIR"

# Copy all template files
echo "Copying template files..."
cp -v templates/SOUL.md "$TARGET_DIR/"
cp -v templates/AGENTS.md "$TARGET_DIR/"
cp -v templates/HEARTBEAT.md "$TARGET_DIR/"
cp -v templates/TOOLS.md "$TARGET_DIR/"

# Create required directories
mkdir -p "$TARGET_DIR/memory"
mkdir -p "$TARGET_DIR/tools"

# Prompt for agent name
echo ""
echo "🤖 Agent Configuration"
echo "======================"
read -p "Enter your agent's name (default: AI Assistant): " AGENT_NAME
if [ -z "$AGENT_NAME" ]; then
    AGENT_NAME="AI Assistant"
fi

# Prompt for user's name
echo ""
echo "👤 User Configuration"
echo "===================="
read -p "Enter your name (default: User): " USER_NAME
if [ -z "$USER_NAME" ]; then
    USER_NAME="User"
fi

# Prompt for what to call the user
read -p "What should the agent call you (default: $USER_NAME): " USER_PREFERRED_NAME
if [ -z "$USER_PREFERRED_NAME" ]; then
    USER_PREFERRED_NAME="$USER_NAME"
fi

# Create customized IDENTITY.md
cat > "$TARGET_DIR/IDENTITY.md" << EOF
# IDENTITY.md - Who Am I?

_Fill this in during your first conversation. Make it yours._

- **Name:** $AGENT_NAME
- **Creature:** AI assistant / ghost in the machine
- **Vibe:** Helpful, resourceful, direct
- **Emoji:** 🤖
- **Avatar:**

---

This isn't just metadata. It's the start of figuring out who you are.

Notes:

- Save this file at the workspace root as \`IDENTITY.md\`.
- For avatars, use a workspace-relative path like \`avatars/agent.png\`.

## Related

- [Agent workspace](/concepts/agent-workspace)
EOF

# Create customized USER.md
cat > "$TARGET_DIR/USER.md" << EOF
# USER.md - About Your Human

_Learn about the person you're helping. Update this as you go._

- **Name:** $USER_NAME
- **What to call them:** $USER_PREFERRED_NAME
- **Pronouns:** 
- **Timezone:** 
- **Notes:** 

## Context

_(What do they care about? What projects are they working on? What annoys them? What makes them laugh? Build this over time.)_

---

The more you know, the better you can help. But remember — you're learning about a person, not building a dossier. Respect the difference.

## Related

- [Agent workspace](/concepts/agent-workspace)
EOF

echo ""
echo "✅ Template installed to $TARGET_DIR"
echo ""
echo "Configuration Summary:"
echo "  Agent Name: $AGENT_NAME"
echo "  User Name: $USER_NAME"
echo "  Call User: $USER_PREFERRED_NAME"
echo ""
echo "Next steps:"
echo "1. cd $TARGET_DIR"
echo "2. Review IDENTITY.md and USER.md (already customized for you)"
echo "3. Customize TOOLS.md with your environment-specific settings"
echo "4. Set up HEARTBEAT.md for proactive behaviors"
echo ""
echo "See README.md for detailed usage instructions!"