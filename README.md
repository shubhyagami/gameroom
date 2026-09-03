# GameRoom – Browser‑Based Multiplayer Arcade

Play classic arcade games with friends right in your browser – no downloads, no sign‑ups, no plugins.

[![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)](https://github.com/shubhyagami/gameroom/actions)
[![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)](LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)](CONTRIBUTING.md)
[![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)](https://github.com/shubhyagami/gameroom/stargazers)
[![Node](https://img.shields.io/badge/Node-20.x-brightgreen?style=flat-square)](https://nodejs.org)

---

## 🎮 Overview

GameRoom is a lightweight, open‑source platform that lets you host and play retro arcade games in real‑time multiplayer mode.  
- Share a link, invite friends, and start playing instantly.  
- No registration, no installations, no plugins.

## ✨ Key Features

| Feature | Description |
|--------|-------------|
| **Instant Room Access** | Join a game by opening a URL – no signup required. |
| **Real‑time Multiplayer** | Up to 8 players per room, full state sync via Socket.IO. |
| **Classic Game Collection** | Three core titles at launch; new games can be added. |
| **Live Leaderboards** | Scores update in real time and persist per room. |
| **Extensible Architecture** | Built with Vite, TypeScript, and Socket.IO – add your own games easily. |

## 🚀 Quick Start

```bash
# 1️⃣ Clone the repository
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom

# 2️⃣ Install dependencies
npm ci

# 3️⃣ Run the development server
npm run dev

# 4️⃣ Open your browser
http://localhost:3000
```

When you’re ready to host, build the production assets:

```bash
npm run build
```

Deploy the `dist/` folder to any static site host (Netlify, Vercel, GitHub Pages, etc.).

## 🛠️ Development

| Script | Purpose |
|--------|---------|
| `npm run dev`   | Start the Vite dev server with hot‑reload |
| `npm run build` | Bundle production assets |
| `npm run lint`  | Run ESLint (StandardJS) |
| `npm test`      | Run Jest unit tests |

The code follows the **StandardJS** style guide – no semicolons, single quotes, lint runs automatically.

## 🤝 Contributing

1. Fork the repo and clone it locally.  
2. Create a feature branch: `git checkout -b feat/<short-description>`.  
3. Keep the StandardJS style.  
4. Write unit tests for new logic.  
5. Push and open a PR against `main`.  
6. Close an issue automatically by referencing it in the PR title/body (`Closes #<number>`).

All contributions are welcome: bug reports, feature ideas, documentation updates, tests, or new games.

## 📦 Changelog

### v1.0.0 – 2026‑08‑28  
- Initial public release.  
- Three classic arcade games included.  
- Real‑time sync for up to 8 players.  
- Live leaderboards per room.

## 📄 License

MIT © [shubhyagami](https://github.com/shubhyagami)

## 🤝 Community & Support

- Issues: <https://github.com/shubhyagami/gameroom/issues>  
- Discussions: <https://github.com/shubhyagami/gameroom/discussions>  
- Discord: <https://discord.gg/gameroom>  
- Live demo: <https://gameroom.example.com> *(placeholder)*
