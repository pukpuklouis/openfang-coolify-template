# OpenFang Coolify Template

Deploy OpenFang on Coolify using pre-built binaries. No compilation required.

## Features

- **Fast deployment**: ~30 seconds vs ~10+ minutes for source build
- **Linux ARM64 optimized**: Uses pre-built `aarch64-unknown-linux-gnu` binary
- **Coolify ready**: One-click deployment with environment variable configuration

## Requirements

- Coolify instance
- Linux ARM64 server

## Deployment

### 1. Add to Coolify

1. Go to Coolify Dashboard
2. Create new Resource → Docker Compose
3. Set Git Repository: `https://github.com/YOUR_USERNAME/openfang-coolify-template`
4. Deploy

### 2. Configure Environment Variables

In Coolify, set these environment variables:

```env
# OpenFang Version (optional, defaults to v0.5.1)
OPENFANG_VERSION=v0.5.1

# LLM Provider API Keys
ANTHROPIC_API_KEY=your-key
OPENAI_API_KEY=your-key
GROQ_API_KEY=your-key
DEEPSEEK_API_KEY=your-key
OPENROUTER_API_KEY=your-key

# Channel Adapters (optional)
TELEGRAM_BOT_TOKEN=your-token
DISCORD_BOT_TOKEN=your-token
SLACK_BOT_TOKEN=your-token
```

### 3. Access

Dashboard will be available at `http://your-server:4200`

## Version Update

To update OpenFang version:

1. Go to Coolify Dashboard
2. Edit Environment Variables
3. Change `OPENFANG_VERSION` to desired version
4. Redeploy

Available versions: https://github.com/RightNow-AI/openfang/releases

## Ports

| Port | Service |
|------|---------|
| 4200 | OpenFang Dashboard |

## Volumes

| Volume | Purpose |
|--------|---------|
| openfang-data | Persistent data storage |

## License

MIT - OpenFang is licensed under MIT