# GameRoom – Browser‑Based Multiplayer Arcade

Play classic arcade games with teammates directly in the browser. No downloads, accounts or plugins are required.

> **Demo** – [play online](https://gameroom-showcase.example.com)

![Build Status](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)
![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)
![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)

---

## What is GameRoom?

GameRoom is an open‑source framework that lets you host and play retro arcade titles in real‑time multiplayer mode, all inside a web browser.  
Key points:

* **Instant play** – share a link and start gaming instantly.  
* **Zero friction** – no sign‑ups, downloads or plugins.  
* **Scalable** – up to eight players per room, synchronized via Socket.IO.  
* **Built‑in** – three classic arcade games out of the box.  
* **Extensible** – add your own games with Vite, TypeScript and Socket.IO.

---

## Features

- One‑click rooms (share a URL).  
- Real‑time multiplayer (≤ 8 players).  
- Live leaderboards per room.  
- Lightweight bundle (Vite).  
- Easy extension point for new games.

---

## Quick Start

```bash
# Clone the repository
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom

# Install and start
npm ci
npm run dev      # opens http://localhost:3000
```

Open the URL, copy it and share with friends. They can join instantly.

To build for production:

```bash
npm run build    # creates the `dist/` folder
```

Deploy `dist/` to any static host (Netlify, Vercel, GitHub Pages, etc.).

---

## Development

| Script | Purpose |
|-------|---------|
| `npm run dev` | Vite dev server with hot‑reload |
| `npm run build` | Bundle production assets |
| `npm run lint` | Run ESLint (StandardJS) |
| `npm test` | Run Jest unit tests |

The code follows **StandardJS** (single quotes, no semicolons). CI runs lint and tests automatically.

---

## Contributing

1. Fork the repo and clone it locally.  
2. Create a feature branch: `git checkout -b feat/<short-name>`.  
3. Follow the StandardJS style guide and add unit tests for any new logic.  
4. Commit, push and open a pull request against `main`.  
5. Reference an issue in the PR title/body (`Closes #<number>`) to close it automatically.

Bug reports, feature requests, documentation updates, tests and new games are welcome.

---

## Changelog

### v1.0.0 – 2026‑08‑28
* Initial public release.  
* Bundled three classic arcade games.  
* Real‑time sync for up to eight players.  
* Live per‑room leaderboards.

---

## License

MIT © [shubhyagami](https://github.com/shubhyagami)

---

## Community & Support

- Issues: <https://github.com/shubhyagami/gameroom/issues>  
- Discussions: <https://github.com/shubhyagami/gameroom/discussions>  
- Discord: <https://discord.gg/gameroom>
