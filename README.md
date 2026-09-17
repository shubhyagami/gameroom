# GameRoom

Browser‑based multiplayer arcade framework that lets you host classic games directly in the browser.

**Demo** – play online: https://gameroom-showcase.example.com

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

## Overview

GameRoom is a lightweight framework for running multiplayer retro arcade games in the browser.  
Key traits:

- **Instant play** – share a link, no sign‑ups or downloads.  
- **Zero friction** – works on the latest Chrome, Firefox, Safari, Edge and Brave.  
- **Scalable** – up to eight players per room, powered by Socket.IO.  
- **Extensible** – add new games with Vite, TypeScript and the existing networking layer.  
- **Bundle size** – < 300 kB after minification.

Games included in the default bundle:

| Name | Icon | Description |
|------|------|-------------|
| **Space Shooter** | 🚀 | Classic top‑down shooter with power‑ups. |
| **Pac‑Clone** | 👾 | Navigate mazes, collect dots and avoid ghosts. |
| **Retro Racer** | 🏎️ | 2‑player split‑screen racing with real‑time sync. |

---

## Getting Started

```bash
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom
npm ci
npm run dev
```

Open `http://localhost:3000` in your browser, copy the URL and share it with friends – they can join instantly.

**Build for production**

```bash
npm run build
```

Deploy the `dist/` directory to any static host (Netlify, Vercel, GitHub Pages, Cloudflare Pages, etc.).

---

## Development

| Script | Purpose |
|--------|--------|
| `npm run dev` | Vite dev server with hot‑reload |
| `npm run build` | Build `dist/` for production |
| `npm run lint` | StandardJS linter |
| `npm test` | Jest unit tests |

### Environment

- Node 20+  
- Vite 5  
- TypeScript 5  
- Socket.IO  
- StandardJS (single quotes, no semicolons)

The CI pipeline runs lint, tests and static analysis on every PR.

---

## Extending GameRoom

1. Add a new folder under `src/games/`.  
2. Export a `Game` class that implements `src/games/IGame.ts`.  
3. Register the game in `src/index.ts` by adding it to the `games` map.  
4. Write unit tests for your game logic.  
5. (Optional) Place a screenshot in `public/screenshots/` for the showcase.

---

## Contributing

1. Fork the repository.  
2. Create a feature branch: `git checkout -b feat/<short-name>`.  
3. Follow the StandardJS style, add unit tests, and keep existing tests passing.  
4. Commit, push, open a PR against `main`.  
5. Reference an issue (`Closes #123`) in the PR title or body to auto‑close it.

All contributions are welcome – bug reports, feature requests, documentation updates, tests, and new games.

---

## Changelog

### v1.0.0 – 2026‑08‑28
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
