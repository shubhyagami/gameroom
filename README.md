# GameRoom – Browser‑Based Multiplayer Arcade  

Play classic arcade titles with friends directly in the browser – no download, no signup required.

[![Build status](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build)](https://github.com/shubhyagami/gameroom/actions)  
[![License](https://img.shields.io/github/license/shubhyagami/gameroom)](LICENSE)  
[![Pull requests](https://img.shields.io/badge/PRs-welcome-brightgreen)](https://github.com/shubhyagami/gameroom/pulls)  
[![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)](https://github.com/shubhyagami/gameroom)  
[![Node](https://img.shields.io/badge/Node-20.x-brightgreen)](https://nodejs.org)

## Features

- Instant room creation: copy a link and start playing immediately.  
- Real‑time multiplayer for up to 8 players.  
- Three core games (Pac‑Man, Flappy‑Bird, a Tetris clone) with the possibility of adding more.  
- Live leaderboards per room.  
- Fully open‑source – feel free to extend or remix.

## Getting Started

```bash
# 1. Clone the repository
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom

# 2. Install dependencies
npm ci

# 3. Run the development server
npm run dev
```

Open <http://localhost:3000> in your browser to play.

To deploy, run `npm run build` and host the `dist/` folder on Netlify, Vercel, or any static‑site provider.

## Development

| Script          | Purpose                     |
|-----------------|-----------------------------|
| `npm run dev`   | Start Vite dev server       |
| `npm run build` | Produce production assets  |
| `npm run lint`  | Run ESLint (StandardJS)     |
| `npm test`      | Run Jest unit tests         |

All code is formatted with StandardJS and linted automatically.

## Contributing

1. Fork the repo and create a feature branch: `git checkout -b feat/<short-name>`.  
2. Follow StandardJS conventions (no semicolons, single quotes).  
3. Add tests for any new logic.  
4. Open a Pull Request against `main`.  
5. Reference an issue with `Closes #<number>` to close it automatically.

Pull requests are welcome—bug reports, feature ideas, documentation, and tests.

## Changelog

### v1.0.0 – 2026‑08‑28  
- Initial public release.  
- Three classic arcade games added.  
- Real‑time room matchmaking for up to 8 players.  
- Live leaderboards per room.

## License

MIT © [shubhyagami](https://github.com/shubhyagami)

## Support

- Issues: https://github.com/shubhyagami/gameroom/issues  
- Discussions: https://github.com/shubhyagami/gameroom/discussions  
- Discord: https://discord.gg/gameroom
