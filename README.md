[K[2m  [2mmodel z-ai/glm-5.3-flash failed, trying next...[0m[0m
# GameRoom

GameRoom is a lightweight, browser-based framework for hosting classic arcade games. Share a single link and friends can play instantly—no downloads or user accounts required.

**Live demo:** https://gameroom-showcase.example.com

## Badges

![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)  
![Lint](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/lint.yml?branch=main&label=Lint&style=flat-square)  
![Test](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/test.yml?branch=main&label=Test&style=flat-square)  
![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/gameroom?style=flat-square)  
![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)  
![Version](https://img.shields.io/github/v/tag/shubhyagami/gameroom?style=flat-square)  
![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)

## Getting Started

Prerequisites: Node.js 20+ and npm.

    git clone https://github.com/shubhyagami/gameroom.git
    cd gameroom
    npm ci
    npm run dev

Open the URL printed in the console (usually http://localhost:3000). Share it with friends so they can join the same room without signing up or installing anything.

## Features

- Instant play through a single shareable link.
- Works in modern browsers including Chrome, Firefox, Safari, Edge, and Brave.
- Supports up to 8 players per room via Socket.IO.
- Extensible game system: add a component under `src/games/` and register it.
- Small production footprint: under 300 kB after minification.

## Included Games

| Game | Icon | Description |
|------|------|-------------|
| Space Shooter | 🚀 | Top-down shooter with power-ups. |
| Pac-Clone | 👾 | Maze navigation, dot collection, and ghost avoidance. |
| Retro Racer | 🏎️ | Two-player split-screen racing with real-time sync. |

## Production Build

    npm run build

The `dist/` folder contains the static assets. Deploy it to any static host, such as Netlify, Vercel, GitHub Pages, or Cloudflare Pages.

## Development

### Scripts

| Script | Purpose |
|--------|---------|
| `npm run dev` | Vite dev server with hot reload. |
| `npm run build` | Build `dist/` for production. |
| `npm run lint` | Run StandardJS linter (single quotes, no semicolons). |
| `npm test` | Run Jest unit tests. |

### Requirements

- Node.js 20+
- Vite 5
- TypeScript 5
- Socket.IO
- StandardJS

The CI pipeline runs linting, tests, and static analysis on every pull request.

## Adding a New Game

1. Create a folder under `src/games/`, for example `src/games/space-shooter`.
2. Export a `Game` class that implements `src/games/IGame.ts`.
3. Register it in `src/index.ts` by adding an entry to the `games` map.
4. Add Jest tests covering the game logic.
5. Optional: add a screenshot to `public/screenshots/` so it appears in the showcase.

## Contributing

1. Fork the repository.
2. Create a feature branch: `git checkout -b feat/<short-name>`.
3. Follow the StandardJS style, add unit tests, and keep existing tests passing.
4. Commit, push, and open a pull request against `main`.
5. Reference an issue in the PR title or body, for example `Closes #123`, to auto-close it.

All contributions are welcome: bug reports, feature requests, documentation updates, tests, and new games.

## Changelog

**v1.0.0 – 2026-08-28**

- Initial public release.
- Bundled three classic arcade games.
- Real-time sync for up to eight players.
- Per-room live leaderboards.

## License

MIT © [shubhyagami](https://github.com/shubhyagami)

## Community & Support

- Issues: https://github.com/shubhyagami/gameroom/issues
- Discussions: https://github.com/shubhyagami/gameroom/discussions
- Discord: https://discord.gg/gameroom
