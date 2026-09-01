# 🎮 GameRoom – Browser‑Based Multiplayer Arcade  

Play retro arcade games with friends directly in your browser – no downloads or sign‑ups needed.

[![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build)](https://github.com/shubhyagami/gameroom/actions)  
[![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)](LICENSE)  
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)](https://github.com/shubhyagami/gameroom/pulls)  
[![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)](https://github.com/shubhyagami/gameroom)  
[![Node](https://img.shields.io/badge/Node-20.x-brightgreen?style=flat-square)](https://nodejs.org)

## Features

- 📎 **Instant room access** – share a link and start playing right away.  
- 👥 **Real‑time multiplayer** – up to 8 players per room, synchronized actions.  
- 🎮 **Classic games collection** – 3 core titles, with new games added periodically.  
- 🏆 **Live leaderboards** – view real‑time scores and see who’s on top.  
- ⚙️ **Open‑source** – fully customizable and extendable.

## Quick Start

```bash
# 1️⃣ Clone the repo
git clone https://github.com/shubhyagami/gameroom.git && cd gameroom

# 2️⃣ Install dependencies
npm ci

# 3️⃣ Run locally
npm run dev

# 4️⃣ Open in your browser
http://localhost:3000
```

All code needed to run the development server is in `src/`.  
Once you're happy, deploy with your preferred host (Netlify, Vercel, etc.).

## Development

| Script | Purpose |
|---------|---------|
| `npm run dev` | Start Vite dev server |
| `npm run build` | Build production assets |
| `npm run lint` | Run ESLint (StandardJS) |
| `npm test` | Run Jest unit tests |

All code follows the [StandardJS](https://standardjs.com) style guide and is linted automatically.  

## Contributing

1. Fork the repo and create a new feature branch: `git checkout -b feat/<short-name>`.  
2. Keep the code style: StandardJS, no semicolons, single quotes.  
3. Add tests when you introduce new logic.  
4. Push and open a Pull Request against `main`.  
5. Reference any issue with `Closes #<number>` to close it automatically.  

We appreciate all contributions—bug reports, feature ideas, documentation, and tests.

## Changelog

### v1.0.0 – 2026‑08‑28  
- Initial public release.  
- Introduced three classic arcade games.  
- Real‑time room matching for up to 8 players.  
- Live leaderboards per room.

## License

MIT © [shubhyagami](https://github.com/shubhyagami)

## Contact & Support

- Issues: https://github.com/shubhyagami/gameroom/issues  
- Discussions: https://github.com/shubhyagami/gameroom/discussions  
- Discord: https://discord.gg/gameroom
