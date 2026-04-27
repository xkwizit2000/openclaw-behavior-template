# Installation Guide

This guide walks you through installing the OpenClaw Agent Behavior Template.

## Quick Installation

### Option 1: Interactive Installer (Recommended)

```bash
# Clone the repository
git clone https://github.com/xkwizit2000/openclaw-behavior-template.git
cd openclaw-behavior-template

# Run the installer
./install.sh ~/my-new-agent
```

The installer will:
1. Copy all template files to your agent workspace
2. Prompt you for your agent's name
3. Prompt you for your name
4. Prompt you for what the agent should call you
5. Create customized IDENTITY.md and USER.md files
6. Create required directories (memory/, tools/)

### Option 2: Manual Installation

```bash
# Copy template files
cp templates/* /path/to/your/agent/workspace/

# Create directories
mkdir -p /path/to/your/agent/workspace/{memory,tools}

# Manually edit IDENTITY.md and USER.md
```

## Post-Installation Steps

### 1. Review Customized Files

Check that `IDENTITY.md` and `USER.md` have the correct information:

```bash
cat ~/my-new-agent/IDENTITY.md
cat ~/my-new-agent/USER.md
```

### 2. Customize TOOLS.md

Add your environment-specific configurations:

```bash
# Edit TOOLS.md with your setup
cat >> ~/my-new-agent/TOOLS.md << EOF

### My Setup

- SSH: my-server → 192.168.1.100
- Cameras: front-door, living-room
- TTS Voice: "Nova"
EOF
```

### 3. Configure HEARTBEAT.md

Set up proactive checks if desired:

```bash
# Add heartbeat tasks
cat >> ~/my-new-agent/HEARTBEAT.md << EOF

# My proactive checks:
# - Check calendar every morning
# - Review MEMORY.md weekly
EOF
```

### 4. Test Your Agent

Start a conversation and verify the agent:
- Uses the correct name
- Calls you by your preferred name
- Has the expected personality traits

## Troubleshooting

### Installer Fails

If `install.sh` fails:
1. Check that you have write permissions to the target directory
2. Ensure bash is available (`bash --version`)
3. Try running with explicit bash: `bash install.sh ~/my-new-agent`

### Files Not Copied

If template files aren't copied:
1. Verify the templates directory exists: `ls templates/`
2. Check for typos in the target path
3. Try absolute paths: `./install.sh /home/user/my-agent`

### Customization Issues

If IDENTITY.md or USER.md look wrong:
1. Check the values you entered during installation
2. Edit the files directly: `nano ~/my-new-agent/IDENTITY.md`
3. Re-run the installer if needed

## Next Steps

After installation:
1. Read [Behavioral Guide](behavioral-guide.md) to understand the patterns
2. Review [Memory Guide](memory-guide.md) for memory management
3. Check [Platform Guide](platform-guide.md) for platform-specific tips
4. Start using your agent!

## Advanced Installation

### Multiple Agents

Install the template for multiple agents:

```bash
./install.sh ~/agent-personal
./install.sh ~/agent-work
./install.sh ~/agent-creative
```

Each agent gets the same behavioral foundation with different identities.

### Version Control

Track your agent's configuration:

```bash
cd ~/my-new-agent
git init
git add .
git commit -m "Initial agent configuration"
```

This allows you to:
- Track changes over time
- Roll back if needed
- Share configurations

### Custom Templates

Modify the templates before installation:

```bash
# Edit templates/SOUL.md with your preferred personality
# Edit templates/AGENTS.md with custom conventions
# Then run the installer
./install.sh ~/my-custom-agent
```