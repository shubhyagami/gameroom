# GameRoom – Browser‑Based Multiplayer Arcade

Play classic arcade games with teammates directly in the browser—no downloads, accounts, or plugins required.

![CI](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)
![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)
![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)

---

## What is GameRoom?

GameRoom is an open‑source framework that lets you host and play retro arcade titles in real‑time multiplayer mode, all within a web browser.

- **Instant play** – share a link and start gaming instantly.  
- **Zero friction** – no sign‑ups, downloads, or browser plugins.  
- **Scalable** – up to eight players per room, synchronized via Socket.IO.

---

## Key Features

| Feature | Description |
|---------|--------------|
| One‑click rooms | Create or join a session with a single URL. |
| Real‑time multiplayer | Up to eight players per room, state sync via Socket.IO. |
| Built‑in library | Three classic arcade games delivered out of the box. |
| Live leaderboards | Scores update in real time and persist per room. |
| Extensible | Add new games with minimal effort using Vite, TypeScript, and Socket.IO. |

---

## 📦 Getting Started

1. **Clone the repo**  
   `git clone https://github.com/shubhyagami/gameroom.git`

2. **Install dependencies**  
   `cd gameroom`  
   `npm ci`

3. **Run the development server**  
   `npm run dev`  
   Open `http://localhost:3000`, copy the URL, and share it with friends.

4. **Build for production**  
   `npm run build`  
   Deploy the generated `dist/` folder to any static host (Netlify, Vercel, GitHub Pages, etc.).

---

## ⚙️ Development

| Script | Purpose |
|--------|---------|
| `npm run dev` | Vite dev server with hot‑reload |
| `npm run build` | Bundle production assets |
| `npm run lint` | Run ESLint (StandardJS) |
| `npm test` | Run Jest unit tests |

The codebase follows the **StandardJS** style guide (single quotes, no semicolons). Linting runs automatically on CI.

---

## 🤝 Contributing

1. Fork the repository and clone it locally.  
2. Create a feature branch: `git checkout -b feat/<short-name>`.  
3. Follow the StandardJS style guide and add unit tests for new logic.  
4. Commit and push, then open a pull request against `main`.  
5. Reference an issue in the PR title/body (`Closes #<number>`) to close it automatically.

Bug reports, feature requests, documentation improvements, tests, and new games are welcome.

---

## 📑 Changelog

### v1.0.0 – 2026‑08‑28  
- Initial public release.  
- Bundled three classic arcade games.  
- Real‑time synchronization for up to eight players.  
- Live per‑room leaderboards.

---

## 📄 License

MIT © [shubhyagami](https://github.com/shubhyagami)

---

## 📢 Community & Support

- Issues: <https://github.com/shubhyagami/gameroom/issues>  
- Discussions: <https://github.com/shubhyagami/gameroom/discussions>  
- Discord: <https://discord.gg/gameroom>
