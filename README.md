# 🎮 GameRoom – Browser‑Based Multiplayer Arcade  

Play classic arcade games with friends directly in your browser – no downloads or sign‑ups required.

![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build)&nbsp;
![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)&nbsp;
![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen?style=flat-square)&nbsp;
![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)&nbsp;
![Node](https://img.shields.io/badge/Node-20.x-brightgreen?style=flat-square)

---

## 📖 Overview

GameRoom is a lightweight, open‑source platform that lets you host and play retro arcade games in real‑time multiplayer mode. Share a link, grab a few friends, and the game starts instantly – no registration or installations needed.

---

## 🚀 Features

| Feature | Description |
|---------|--------------|
| **Instant Room Access** | Share a URL and get in the game immediately. |
| **Real‑time Multiplayer** | Up to 8 players per room, fully synchronized. |
| **Classic Game Collection** | Three core titles at launch, with a roadmap for new games. |
| **Live Leaderboards** | In‑room score tracking that updates in real time. |
| **Open Source & Extensible** | Built with Vite, TypeScript, and Socket.IO – easily add your own games. |

---

## 📦 Getting Started

```bash
# 1️⃣ Clone the repository
git clone https://github.com/shubhyagami/gameroom.git && cd gameroom

# 2️⃣ Install dependencies
npm ci

# 3️⃣ Run the development server
npm run dev

# 4️⃣ Open your browser
http://localhost:3000
```

That’s it! The code for the dev server lives in `src/`. When you’re ready to host, build and deploy with your favourite platform (Netlify, Vercel, etc.).

---

## 🛠 Development

| Script | Purpose |
|--------|---------|
| `npm run dev`   | Start the Vite dev server with hot‑reload |
| `npm run build` | Bundle production assets |
| `npm run lint`  | Run ESLint (StandardJS) |
| `npm test`      | Run Jest unit tests |

The repository follows the [StandardJS](https://standardjs.com) style guide – no semicolons, single quotes, and the lint step runs automatically.

---

## 🤝 Contributing

1. Fork and clone the repo.  
2. Create a feature branch: `git checkout -b feat/<short-description>`.  
3. Keep the code style: StandardJS, single quotes, no semicolons.  
4. Add tests when adding new logic.  
5. Push and open a Pull Request against `main`.  
6. Reference an issue with `Closes #<number>` to close it automatically.

All contributions are welcome, whether it’s bug reports, feature ideas, documentation improvements, or tests.

---

## 📜 Changelog

### v1.0.0 – 2026‑08‑28  
- Initial public release.  
- Three classic arcade games available.  
- Real‑time synchronization for up to 8 players.  
- Live leaderboards per room.

---

## 📄 License

MIT © [shubhyagami](https://github.com/shubhyagami)

---

## 📞 Support & Community

- **Issues**: https://github.com/shubhyagami/gameroom/issues  
- **Discussions**: https://github.com/shubhyagami/gameroom/discussions  
- **Discord**: https://discord.gg/gameroom  
- **Homepage**: https://gameroom.example.com (placeholder)
