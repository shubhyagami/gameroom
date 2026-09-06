# GameRoom – Browser‑Based Multiplayer Arcade  

Play classic arcade titles with friends directly in the browser – no downloads, sign‑ups, or plugins required.

![CI](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)  
![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)  
![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)  
![Node](https://img.shields.io/badge/Node-20.x-brightgreen?style=flat-square)  
![TypeScript](https://img.shields.io/badge/TypeScript-5.x-brightgreen?style=flat-square)  
![Vite](https://img.shields.io/badge/Vite-5.x-brightgreen?style=flat-square)  
![Socket.IO](https://img.shields.io/badge/Socket.IO-4.x-brightgreen?style=flat-square)  

---

## 🎮 What is GameRoom?

GameRoom is a lightweight, open‑source framework that lets you host and play retro arcade games in real‑time multiplayer mode, all within a web browser.

* **Instant play** – share a link and start gaming immediately.  
* **No friction** – no sign‑ups, no downloads, no browser plugins.  

---

## ✨ Features

| Feature | Description |
|--------|-------------|
| **One‑click rooms** | Create or join a session with a single URL. |
| **Real‑time multiplayer** | Up to 8 players per room; state sync via Socket.IO. |
| **Built‑in collection** | Three classic arcade games are bundled out of the box. |
| **Live leaderboards** | Scores update in real time and persist per room. |
| **Extensible** | Add new games with minimal effort using Vite, TypeScript, and Socket.IO. |

---

## 🚀 Quick Start

```bash
# 1️⃣ Clone the repository
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom

# 2️⃣ Install dependencies
npm ci

# 3️⃣ Launch the dev server
npm run dev
```

Open **http://localhost:3000** in your browser, then copy the URL and share it with friends.

### Build for production

```bash
npm run build
```

Deploy the `dist/` folder to any static host (Netlify, Vercel, GitHub Pages, etc.).

---

## 🛠️ Development

| Script | Purpose |
|--------|---------|
| `npm run dev` | Vite dev server with hot‑reload |
| `npm run build` | Bundle production assets |
| `npm run lint` | Run ESLint (StandardJS) |
| `npm test` | Run Jest unit tests |

The codebase follows the **StandardJS** style guide (single quotes, no semicolons). Linting runs automatically on CI.

---

## 🤝 Contributing

1. Fork and clone the repository.  
2. Create a feature branch: `git checkout -b feat/<brief‑name>`.  
3. Follow the StandardJS style guide and add unit tests for new logic.  
4. Push and open a pull request against `main`.  
5. Reference an issue in the PR title/body (`Closes #<number>`) to auto‑close it.

Bug reports, feature ideas, documentation, tests, and new games are all welcome.

---

## 📦 Changelog

### v1.0.0 – 2026‑08‑28  
- Initial public release.  
- Three classic arcade games bundled.  
- Real‑time sync for up to 8 players.  
- Live leaderboards per room.

---

## 📄 License

MIT © [shubhyagami](https://github.com/shubhyagami)

---

## 📢 Community & Support

- Issues: <https://github.com/shubhyagami/gameroom/issues>  
- Discussions: <https://github.com/shubhyagami/gameroom/discussions>  
- Discord: <https://discord.gg/gameroom>
