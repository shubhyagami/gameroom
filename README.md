[K[2m  [2mmodel z-ai/glm-5.3-flash failed, trying next...[0m[0m
[K[2m  [2mmodel deepseek-ai/deepseek-v4.1-flash failed, trying next...[0m[0m
# GameRoom

GameRoom is a lightweight, browser‑only framework that lets you host classic arcade games with a single link. No downloads, no accounts—just a URL anyone can open in Chrome, Firefox, Safari, Edge, or Brave.

**Live demo:** <https://gameroom-showcase.example.com>

[![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)](https://github.com/shubhyagami/gameroom/actions?query=workflow%3Aci)
[![Lint](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/lint.yml?branch=main&label=Lint&style=flat-square)](https://github.com/shubhyagami/gameroom/actions?query=workflow%3Alint)
[![Test](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/test.yml?branch=main&label=Test&style=flat-square)](https://github.com/shubhyagami/gameroom/actions?query=workflow%3Atest)
[![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/gameroom?style=flat-square)](https://app.codecov.io/gh/shubhyagami/gameroom)
[![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)](./LICENSE)
[![Version](https://img.shields.io/github/v/tag/shubhyagami/gameroom?style=flat-square)](https://github.com/shubhyagami/gameroom/releases)
[![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)](https://github.com/shubhyagami/gameroom/stargazers)

---

## 📌 Features

- **Instant play** – share a single URL, and your friends can jump right in.
- **Real–time multiplayer** – up to 8 players in a single room, synchronized via Socket.IO.
- **Extensible** – add a new game by dropping a component into `src/games/` and registering it.
- **Tiny footprint** – the minified bundle is under 300 kB, perfect for static hosting.

---

## 🎮 Included Games

| Game         | Icon | Description |
|--------------|------|-------------|
| Space Shooter | 🚀 | Top‑down shooter with power‑ups. |
| Pac‑Clone | 👾 | Maze navigation, dot collection, and ghost avoidance. |
| Retro Racer | 🏎️ | Two‑player split‑screen racing with real‑time sync. |

---

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom

# Install dependencies and launch the dev server
npm ci
npm run dev
```

The console will print the URL (usually `http://localhost:3000`). Share it with friends; they’ll join the same room immediately.

---

## 📦 Production Build

```bash
npm run build
```

`dist/` contains the static assets. Deploy that folder to any static host (Netlify, Vercel, GitHub Pages, Cloudflare Pages, etc.).

---

## 🛠️ Development

### Available Scripts

| Script        | Purpose |
|---------------|---------|
| `npm run dev` | Vite dev server with hot module reloading. |
| `npm run build` | Build the `dist/` folder for production. |
| `npm run lint` | Run StandardJS (single quotes, no semicolons). |
| `npm test` | Execute Jest unit tests. |

### Tech Stack

- Node.js **20+**
- Vite 5
- TypeScript 5
- Socket.IO
- StandardJS
- Jest

CI checks linting, tests, and code coverage on every PR.

---

## 🧩 Adding a New Game

1. Create a directory under `src/games/` (e.g., `src/games/space-shooter`).  
2. Export a `Game` class that implements `src/games/IGame.ts`.  
3. Register the game in `src/index.ts` by adding it to the `games` map.  
4. Write Jest tests for the game logic.  
5. (Optional) Add a screenshot to `public/screenshots/` to feature it in the showcase.

---

## 🤝 Contributing

1. Fork the repo.  
2. Create a feature branch: `git checkout -b feat/<short-name>`.  
3. Follow StandardJS style, add tests, and keep the existing suite passing.  
4. Commit, push, and open a PR against `main`.  
5. Reference an issue in the PR title or body (e.g., `Closes #123`) to close it automatically.

Bug reports, feature requests, documentation updates, tests, and new games are all welcome.

---

## 📜 Changelog

### v1.0.0 – 2026‑08‑28

- Initial public release with three classic arcade games.  
- Real‑time sync for up to eight players.  
- Per‑room live leaderboards.

---

## 📄 License

MIT © [shubhyagami](https://github.com/shubhyagami)

---

## 📣 Community & Support

- [Issues](https://github.com/shubhyagami/gameroom/issues)  
- [Discussions](https://github.com/shubhyagami/gameroom/discussions)  
- [Discord](https://discord.gg/gameroom)
