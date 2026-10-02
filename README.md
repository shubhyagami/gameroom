# GameRoom

GameRoom is a lightweight, browser-based framework for hosting classic arcade games. Share a single link — no downloads, no accounts — and anyone can open it in a modern browser (Chrome, Firefox, Safari, Edge, or Brave) and start playing.

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

- **Instant play** — share one URL and friends can jump into the same room.
- **Real-time multiplayer** — up to 8 players per room, kept in sync via Socket.IO.
- **Extensible** — add a game by dropping a component into `src/games/` and registering it.
- **Small footprint** — the minified bundle is under 300 kB, so it deploys to any static host.

---

## 🎮 Included Games

| Game | Icon | Description |
|------|:----:|-------------|
| Space Shooter | 🚀 | Top-down shooter with power-ups. |
| Pac-Clone | 👾 | Maze navigation, dot collection, and ghost avoidance. |
| Retro Racer | 🏎️ | Two-player split-screen racing with real-time sync. |

---

## 🚀 Quick Start

Requires Node.js 20+ and npm.

```bash
# Clone the repository
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom

# Install dependencies and start the dev server
npm ci
npm run dev
```

The console prints the local URL (usually `http://localhost:3000`). Open it to start playing — anyone with the link can join
