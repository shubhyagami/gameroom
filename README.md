# GameRoom

A browser‑based multiplayer arcade framework that lets you host classic games directly in the browser – no downloads, no sign‑ups, instant play.

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

## Getting Started

1. **Clone** the repo  
   `git clone https://github.com/shubhyagami/gameroom.git`
2. **Navigate** to the folder  
   `cd gameroom`
3. **Install** dependencies (npm >= 20)  
   `npm ci`
4. **Run** the development server  
   `npm run dev`

Open `http://localhost:3000`, copy the URL, and share it with friends. They can join instantly.

---

## Features

- **Instant play** – share a link, no sign‑ups or downloads required.  
- **Zero friction** – works in the latest Chrome, Firefox, Safari, Edge, and Brave.  
- **Scalable** – up to eight players per room via Socket.IO.  
- **Extensible** – add new games by creating a component in `src/games/` and registering it.  
- **Lightweight** – bundle size less than 300 kB after minification.

---

## Default Games

| Name          | Icon | Description |
|---------------|------|--------------|
| Space Shooter | 🚀 | Top‑down shooter with power‑ups. |
| Pac‑Clone     | 👾 | Maze navigation, dot collection, ghost avoidance. |
| Retro Racer   | 🏎️ | 2‑player split‑screen racing with real‑time sync. |

---

## Production Build

`npm run build`

The `dist/` directory contains the production assets. Deploy that folder to any static host (Netlify, Vercel, GitHub Pages, Cloudflare Pages, etc.).

---

## Development

| Script | Purpose |
|--------|---------|
| `npm run dev`   | Vite dev server with hot‑reload |
| `npm run build`  | Build `dist/` for production |
| `npm run lint`  | StandardJS linter (single quotes, no semicolons) |
| `npm test`       | Jest unit tests |

**Environment**

- Node 20+  
- Vite 5  
- TypeScript 5  
- Socket.IO  
- StandardJS

The CI pipeline runs linting, tests, and static analysis on every pull request.

---

## Extending GameRoom

1. **Create** a folder under `src/games/` (e.g., `src/games/space-shooter`).  
2. **Export** a `Game` class that implements `src/games/IGame.ts`.  
3. **Register** it in `src/index.ts` by adding to the `games` map.  
4. **Test** your logic with Jest.  
5. **(Optional)** Add a screenshot to `public/screenshots/` for the showcase.

---

## Contributing

1. Fork the repository.  
2. Create a feature branch: `git checkout -b feat/<short-name>`.  
3. Follow StandardJS style, write unit tests, keep existing tests passing.  
4. Commit, push, and open a pull request against `main`.  
5. Reference an issue in the PR title or body (e.g., `Closes #123`) to auto‑close it.

All contributions are welcome: bug reports, feature requests, documentation updates, tests, and new games.

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
