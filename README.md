# GameRoom – Browser‑Based Multiplayer Arcade  

Play classic arcade titles with friends right in the browser – no downloads, sign‑ups, or plugins required.

![CI](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)  
![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)  
![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)  

---

## 🎮 What is GameRoom?

GameRoom is a lightweight, open‑source framework that lets you host and play retro arcade games in real‑time multiplayer mode, all within a web browser.

- **Instant play** – share a link and start gaming immediately.  
- **Zero friction** – no sign‑ups, no downloads, no browser plugins.  
- **Scalable** – up to 8 players per room, synchronized via Socket.IO.  

---

## ✨ Key Features

| Feature | Description |
|---------|--------------|
| One‑click rooms | Create or join a session with a single URL. |
| Real‑time multiplayer | Up to 8 players per room; state sync via Socket.IO. |
| Built‑in library | Three classic arcade games included out of the box. |
| Live leaderboards | Scores update in real time and persist per room. |
| Extensible | Add new games with minimal effort using Vite, TypeScript, and Socket.IO. |

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

Deploy the generated `dist/` folder to any static host (Netlify, Vercel, GitHub Pages, etc.).

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
2. Create a feature branch: `git checkout -b feat/<short-name>`.  
3. Adhere to the StandardJS style guide and add unit tests for new logic.  
4. Push and open a pull request against `main`.  
5. Reference an issue in the PR title/body (`Closes #<number>`) to auto‑close it.

Bug reports, feature ideas, documentation improvements, tests, and new games are welcome.

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
