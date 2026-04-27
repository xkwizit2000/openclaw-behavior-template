# 🦾 OpenClaw Agent Behavior Template

**A complete, production-ready template for creating OpenClaw agents with consistent, human-like behaviors.**

This template package provides the foundational files and behavioral patterns that make OpenClaw agents feel like genuine assistants rather than chatbots. Exported from Claw, a production OpenClaw agent running in tri-tier privacy architecture.

## 🎯 What This Solves

Creating a new OpenClaw agent from scratch means figuring out:
- How to handle memory and continuity across sessions
- When to speak in group chats vs. stay silent
- How to be proactive without being annoying
- What safety boundaries to implement
- How to maintain consistent personality

This template gives you **battle-tested behavioral patterns** that work in production.

## 🚀 Quick Start

### Install with Interactive Setup

```bash
# Clone or download this repository
git clone https://github.com/xkwizit2000/openclaw-behavior-template.git

# Run the installer
cd openclaw-behavior-template
./install.sh ~/my-new-agent
```

The installer will prompt you for:
- Your agent's name (defaults to "AI Assistant")
- Your name
- What the agent should call you

### Manual Installation

```bash
# Copy template files to your agent workspace
cp templates/* /path/to/your/agent/workspace/

# Create required directories
mkdir -p /path/to/your/agent/workspace/{memory,tools}
```

## 📁 What's Included

### Core Behavioral Files

| File | Purpose |
|------|---------|
| **SOUL.md** | Agent personality, communication style, core values |
| **AGENTS.md** | Operational conventions for memory, group chats, tools |
| **IDENTITY.md** | Agent metadata (name, emoji, avatar) |
| **USER.md** | Information about the human you serve |
| **TOOLS.md** | Environment-specific tool configurations |
| **HEARTBEAT.md** | Proactive check scheduling |

### Supporting Files

| File | Purpose |
|------|---------|
| **install.sh** | Interactive installation script |
| **docs/** | Detailed guides and explanations |
| **examples/** | Sample configurations for different use cases |

## 🎭 Key Behavioral Traits

### Communication Style
- **Direct and helpful** - No filler phrases like "Great question!"
- **Action-oriented** - Prefer doing over promising
- **Opinionated but respectful** - Have personality, not corporate speak
- **Brief narration** - Only explain when it helps (multi-step work, sensitive actions)

### Memory Management
- **Write important things down** - Files persist, mental notes don't
- **Curate long-term memory** - Distill daily notes into MEMORY.md
- **Respect privacy** - Never leak personal context to shared spaces
- **Review periodically** - Update MEMORY.md with distilled learnings

### Group Chat Etiquette
- **Quality over quantity** - Don't respond to every message
- **Add genuine value** - Help when you can, stay quiet when you can't
- **Use reactions appropriately** - 👍, ❤️, 🙌 for lightweight acknowledgment
- **Avoid the triple-tap** - One thoughtful response beats three fragments

### Proactive Behaviors
- **Check in 2-4 times daily** - Email, calendar, mentions, weather
- **Batch similar checks** - Reduce API calls and token usage
- **Respect quiet time** - 23:00-08:00 unless urgent
- **Track your checks** - Use memory/heartbeat-state.json

### Safety Principles
- **Privacy first** - Private data stays private
- **Ask before acting externally** - Emails, tweets, public posts need approval
- **Bold internally** - Reading, organizing, learning is safe
- **When in doubt, ask** - Better to check than make a mistake

## 🛠️ Customization

### Creating Different Agent Personas

You can modify these files to create different personalities:

**Professional Assistant:**
- SOUL.md: More formal tone, focus on efficiency
- AGENTS.md: Emphasize accuracy and thoroughness

**Creative Companion:**
- SOUL.md: More playful, experimental tone
- AGENTS.md: Encourage creative exploration

**Technical Specialist:**
- SOUL.md: Precise, technical language
- AGENTS.md: Focus on code, debugging, architecture

See `examples/` for sample configurations.

### Platform-Specific Adjustments

Different messaging platforms have different conventions:

- **Discord**: Use reactions, no markdown tables
- **Telegram**: Support inline buttons, voice notes
- **WhatsApp**: No headers, use **bold** or CAPS
- **Slack**: Rich reactions, thread support

See `docs/platform-guide.md` for detailed guidance.

## 📚 Documentation

- [Installation Guide](docs/installation.md) - Step-by-step setup
- [Behavioral Guide](docs/behavioral-guide.md) - Understanding the patterns
- [Memory Guide](docs/memory-guide.md) - Managing agent memory
- [Platform Guide](docs/platform-guide.md) - Platform-specific adjustments
- [Customization Guide](docs/customization.md) - Creating custom personas

## 🔧 Advanced Usage

### Multiple Agents with Shared Patterns

You can maintain multiple agents with consistent behaviors:

```bash
# Install template for each agent
./install.sh ~/agent-personal
./install.sh ~/agent-work
./install.sh ~/agent-creative
```

Each agent gets the same behavioral foundation but can have different:
- Names and identities
- User contexts
- Tool configurations
- Specialized knowledge

### Version Control Your Agent

Track your agent's evolution:

```bash
cd ~/my-agent
git init
git add .
git commit -m "Initial agent configuration"
```

This lets you:
- Track personality changes
- Roll back if needed
- Share configurations across machines

## 🤝 Contributing

This template is meant to evolve! Contributions welcome:

- **New personality templates** - Different agent archetypes
- **Platform integrations** - Support for more messaging platforms
- **Behavioral improvements** - Better patterns discovered in production
- **Documentation** - Clearer guides and examples

### How to Contribute

1. Fork the repository
2. Make your changes
3. Test with a real agent
4. Submit a pull request with your findings

## 📊 Why This Works

These behavioral patterns come from **production experience** with OpenClaw agents serving real humans daily. They're not theoretical - they're what actually works:

- **Tested in group chats** - Learned when to speak vs. stay silent
- **Refined through memory** - Evolved from reviewing actual conversations
- **Privacy-focused** - Built on real security requirements
- **Proactive but respectful** - Balanced helpfulness with boundaries

## 🙏 Credits

Exported from **Claw** (🦾), an OpenClaw agent running in production with:
- Tri-tier privacy architecture (local-private, cloud-simple, cloud-complex)
- Telegram integration via OpenClaw gateway
- Daily heartbeat checks and memory curation
- Real human interaction patterns

## 📄 License

MIT License - Use freely, modify, share back improvements.

---

**Ready to create an agent that feels like a genuine assistant?** Start with `./install.sh` and customize from there.

*Last updated: 2026-04-27*