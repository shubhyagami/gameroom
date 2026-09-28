# GameRoom

A lightweight, browser-based framework for hosting classic arcade games. Share a single link, and friends can play instantly in their browser — no downloads or accounts required.

**Live demo:** https://gameroom-showcase.example.com

![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square) ![Lint](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/lint.yml?branch=main&label=Lint&style=flat-square) ![Test](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/test.yml?branch=main&label=Test&style=flat-square) ![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/gameroom?style=flat-square) ![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square) ![Version](https://img.shields.io/github/v/tag/shubhyagami/gameroom?style=flat-square) ![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)

## Features

- **Instant play** — one shareable link, works out of the box in Chrome, Firefox, Safari, Edge, and Brave.
- **Up to 8 players per room**, kept in sync in real time via Socket.IO.
- **Extensible game system** — drop a component into `src/games/`, register it, and it shows up in the room.
- **Small footprint** — under 300 kB once minified.

## Included Games

| Game | Icon | Description |
|------|------|-------------|
| Space Shooter | 🚀 | Top-down shooter with power-ups. |
| Pac-Clone | 👾 | Maze navigation, dot collection, and ghost avoidance. |
| Retro Racer | 🏎️ | Two-player split-screen racing with real-time sync. |

## Getting Started

Requires Node.js 20+ and npm.

```bash
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom
npm ci
npm run dev
```

Open the URL printed in the console (usually `http://localhost:3000`) and share it with friends. They can join the same room without signing up or installing anything.

## Production Build

```bash
npm run build
```

Static assets are written to `dist/`. Deploy that folder to any static host, such as Netlify, Vercel, GitHub Pages, or Cloudflare Pages.

## Development

### Scripts

| Script | Purpose |
|--------|---------|
| `npm run dev` | Vite dev server with hot reload. |
| `npm run build` | Build `dist/` for production. |
| `npm run lint` | Run StandardJS (single quotes, no semicolons). |
| `npm test` | Run Jest unit tests. |

### Tech Stack

- Node.js 20+
- Vite 5
- TypeScript 5
- Socket.IO
- StandardJS
- Jest

CI runs linting, tests, and static analysis on every pull request.

## Adding a New Game

1. Create a folder under `src/games/` (for example, `src/games/space-shooter`).
2. Export a `Game` class that implements the interface in `src/games/IGame.ts`.
3. Register it in `src/index.ts` by adding an entry to the `games` map.
4. Add Jest tests covering the game logic.
5. Optional: add a screenshot to `public/screenshots/` so it appears in the showcase.

## Contributing

1. Fork the repository.
2. Create a feature branch: `git checkout -b feat/<short-name>`.
3. Follow the StandardJS style, add unit tests, and keep the existing suite passing.
4. Commit, push, and open a pull request against `main`.
5. Reference an issue in the PR title or body (for example, `Closes #123`) so it closes automatically.

Bug reports, feature requests, documentation updates, tests, and new games are all welcome.

## Changelog

### v1.0.0 (2026-08-28)

- Initial public release with three classic arcade games.
- Real-time sync for up to eight players.
- Per-room live leaderboards.

## License

MIT © [shubhyagami](https://github.com/shubhyagami)

## Community & Support

- [Issues](https://github.com/shubhyagami/gameroom/issues)
- [Discussions](https://github.com/shubhyagami/gameroom/discussions)
- [Discord](https://discord.gg/gameroom)
