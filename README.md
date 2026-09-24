[K[2m  [2mmodel deepseek-ai/deepseek-v4.1-flash failed, trying next...[0m[0m
# GameRoom

GameRoom is a lightweight, browser‑based framework that lets you host classic arcade games without any downloads or user accounts. Share a single link and friends can play instantly.

**Live demo** – https://gameroom-showcase.example.com  

---

## Badges

![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)  
![Lint](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/lint.yml?branch=main&label=Lint&style=flat-square)  
![Test](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/test.yml?branch=main&label=Test&style=flat-square)  
![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/gameroom?style=flat-square)  
![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)  
![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)  
![Version](https://img.shields.io/github/v/tag/shubhyagami/gameroom?style=flat-square)

---

## Quick Start

```bash
# 1️⃣ Clone the repository
git clone https://github.com/shubhyagami/gameroom.git

# 2️⃣ Install dependencies (Node 20+)
cd gameroom
npm ci

# 3️⃣ Run the local dev server
npm run dev
```

Open the URL printed in the console (usually http://localhost:3000) and share it. Your friends can join the same room without any sign‑up or install.

---

## Features

- **Instant play** – one‑click link sharing, no download required.  
- **Modern browser support** – Chrome, Firefox, Safari, Edge, Brave, and others.  
- **Up to 8 players per room** via Socket.IO.  
- **Extensible** – add a new game by placing a component in `src/games/` and registering it.  
- **Small footprint** – < 300 kB after minification.  

---

## Included Games

| Game | Icon | Description |
|------|------|-------------|
| Space Shooter | 🚀 | Top‑down shooter with power‑ups. |
| Pac‑Clone | 👾 | Maze navigation, dot collection, ghost avoidance. |
| Retro Racer | 🏎️ | 2‑player split‑screen racing with real‑time sync. |

---

## Production Build

```bash
npm run build
```

The `dist/` folder contains the static assets. Deploy it to any static host (Netlify, Vercel, GitHub Pages, Cloudflare Pages, etc.).

---

## Development Scripts

| Script | Purpose |
|--------|---------|
| `npm run dev`   | Vite dev server with hot reload |
| `npm run build` | Build `dist/` for production |
| `npm run lint`  | StandardJS linter (single quotes, no semicolons) |
| `npm test`      | Jest unit tests |

**Requirements**

- Node 20+  
- Vite 5  
- TypeScript 5  
- Socket.IO  
- StandardJS  

The CI pipeline runs linting, tests, and static analysis on every PR.

---

## Adding a New Game

1. Create a folder under `src/games/` (e.g., `src/games/space-shooter`).  
2. Export a `Game` class that implements `src/games/IGame.ts`.  
3. Register it in `src/index.ts` by adding an entry to the `games` map.  
4. Write Jest tests to cover game logic.  
5. (Optional) Add a screenshot to `public/screenshots/` so it appears in the showcase.

---

## Contributing

1. Fork the repository.  
2. Create a feature branch: `git checkout -b feat/<short-name>`.  
3. Follow the StandardJS style, add unit tests, keep existing tests passing.  
4. Commit, push, and open a PR against `main`.  
5. Reference an issue in the PR title or body (e.g., `Closes #123`) to auto‑close it.

All contributions—bug reports, feature requests, documentation updates, tests, and new games—are welcome.

---

## Changelog

**v1.0.0 – 2026‑08‑28**

- Initial public release.  
- Bundled three classic arcade games.  
- Real‑time sync for up to eight players.  
- Per‑room live leaderboards.

---

## License

MIT © [shubhyagami](https://github.com/shubhyagami)

---

## Community & Support

- Issues: https://github.com/shubhyagami/gameroom/issues  
- Discussions: https://github.com/shubhyagami/gameroom/discussions  
- Discord: https://discord.gg/gameroom  
