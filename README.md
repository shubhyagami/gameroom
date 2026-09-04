# GameRoom – Browser‑Based Multiplayer Arcade

Play classic arcade games with friends straight in the browser—no downloads, no registrations, no plugins.

![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)  
![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)  
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)  
![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)  
![Node](https://img.shields.io/badge/Node-20.x-brightgreen?style=flat-square)  
![TypeScript](https://img.shields.io/badge/TypeScript-5.x-brightgreen?style=flat-square)  
![Vite](https://img.shields.io/badge/Vite-5.x-brightgreen?style=flat-square)  
![Socket.IO](https://img.shields.io/badge/Socket.IO-4.x-brightgreen?style=flat-square)

--------------------------------------------------------------------

## 🎮 Overview

GameRoom is a lightweight, open‑source framework that lets you host and play retro arcade titles in real‑time multiplayer mode—all inside a web browser.  
- Share a link, invite friends, and start playing instantly.  
- No sign‑ups, installations, or plugins required.

--------------------------------------------------------------------

## ✨ Features

| Feature | Description |
|---------|-------------|
| Instant Room Access | Join a game by clicking a URL – no signup needed. |
| Real‑time Multiplayer | Up to 8 players per room with smooth state sync via Socket.IO. |
| Core Game Collection | Three classic arcade games shipped with the repo. |
| Live Leaderboards | Scores update in real time and persist per room. |
| Extensible API | Built with Vite, TypeScript, and Socket.IO – add your own games with minimal effort. |

--------------------------------------------------------------------

## 🚀 Quick Start

```bash
# 1️⃣ Clone the repository
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom

# 2️⃣ Install dependencies
npm ci

# 3️⃣ Start the Vite dev server
npm run dev
```

Open **http://localhost:3000** in your browser and share the URL with friends.

### Build for production

```bash
npm run build
```

Deploy the contents of the `dist/` folder to any static‑host (Netlify, Vercel, GitHub Pages, etc.).  

--------------------------------------------------------------------

## 🛠️ Development

| Script | Purpose |
|---------|---------|
| `npm run dev` | Vite dev server with hot‑reload |
| `npm run build` | Bundle production assets |
| `npm run lint` | Run ESLint (StandardJS) |
| `npm test` | Run Jest unit tests |

The codebase follows the **StandardJS** style guide (no semicolons, single quotes). Linting runs automatically on CI.

--------------------------------------------------------------------

## 🤝 Contributing

1. Fork the repo and clone it locally.  
2. Create a feature branch: `git checkout -b feat/<short-description>`.  
3. Keep to StandardJS style and add unit tests for new logic.  
4. Push and open a PR against `main`.  
5. Reference an issue in the PR title/body (`Closes #<number>`) to auto‑close it.

Bug reports, feature ideas, documentation, tests, and new games are all welcome.

--------------------------------------------------------------------

## 📦 Changelog (excerpt)

### v1.0.0 – 2026‑08‑28  
- Initial public release.  
- Three classic arcade games bundled.  
- Real‑time sync for up to 8 players.  
- Live leaderboards per room.

--------------------------------------------------------------------

## 📄 License

MIT © [shubhyagami](https://github.com/shubhyagami)

--------------------------------------------------------------------

## 🤝 Community & Support

- Issues: <https://github.com/shubhyagami/gameroom/issues>  
- Discussions: <https://github.com/shubhyagami/gameroom/discussions>  
- Discord: <https://discord.gg/gameroom>  
- Live demo: <https://gameroom.example.com> *(placeholder)*

---
