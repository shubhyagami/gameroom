# GameRoom

Browser‑based multiplayer arcade framework – run and play retro games directly in the browser.

> Demo – [play online](https://gameroom-showcase.example.com)

## Badges

![Build](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/ci.yml?branch=main&label=Build&style=flat-square)
![Lint](https://img.shields.io/github/actions/workflow/status/shubhyagami/gameroom/lint.yml?branch=main&label=Lint&style=flat-square)
![Coverage](https://img.shields.io/codecov/c/github/shubhyagami/gameroom?style=flat-square)
![License](https://img.shields.io/github/license/shubhyagami/gameroom?style=flat-square)
![Stars](https://img.shields.io/github/stars/shubhyagami/gameroom?style=social&label=%20Stars)
![Version](https://img.shields.io/github/v/tag/shubhyagami/gameroom?style=flat-square)

## What is GameRoom?

GameRoom is an open‑source framework that lets you host retro arcade titles in real‑time multiplayer mode – all inside a modern web browser.

**Key traits**

- **Instant play** – share a URL, no sign‑ups or downloads required.  
- **Zero‑friction** – runs on the latest browsers; no plugins.  
- **Scalable** – up to eight players per room, sync via Socket.IO.  
- **Out‑of‑the‑box** – three classic arcade games pre‑bundled.  
- **Extensible** – plug in your own games using Vite, TypeScript and the same networking layer.

## Features

- One‑click room creation  
- Live leaderboards per room  
- Low bundle size (Vite + Terser)  
- Hot‑reload development server  
- StandardJS linting & Jest tests  
- Cross‑browser compatibility (Chrome, Firefox, Safari, Edge, Edge Chromium, Brave)

## Getting Started

```bash
git clone https://github.com/shubhyagami/gameroom.git
cd gameroom
npm ci      # install dependencies
npm run dev # launch dev server
```

Open <http://localhost:3000>, copy the URL and share it with friends. They can join instantly.

To build a production bundle:

```bash
npm run build
```

Deploy the `dist/` folder to any static host (Netlify, Vercel, GitHub Pages, Cloudflare Pages, etc.).

## Development

| Script | Description |
|--------|-------------|
| `npm run dev` | Vite development server with HMR |
| `npm run build` | Builds `dist/` for production |
| `npm run lint` | Run StandardJS linter |
| `npm test` | Execute Jest unit tests |

The codebase uses:

- **Node 20+**  
- Vite 5  
- TypeScript 5  
- Socket.IO  
- StandardJS (single quotes, no semicolons)

The CI pipeline runs lint, tests and static analysis.

## Extending GameRoom

1. Create a new directory under `src/games/`.  
2. Export a `Game` class that implements the `IGame` interface (see `src/games/IGame.ts`).  
3. Register the game in `src/index.ts` by adding it to the `games` map.  
4. Write tests for the new game logic.  
5. Optional: add a screenshot in the `public/screenshots/` folder for the showcase.

## Contributing

1. Fork the repository.  
2. Create a feature branch: `git checkout -b feat/<short-name>`.  
3. Follow StandardJS style, add unit tests, keep existing tests passing.  
4. Commit, push, open a PR against `main`.  
5. Reference an issue (`Closes #123`) in the PR title or body to auto‑close it.

All contributions are welcome – bug reports, feature requests, documentation, tests and new games.

## Changelog

### v1.0.0 – 2026‑08‑28
- Initial public release.  
- Bundled three classic arcade games.  
- Real‑time sync for up to eight players.  
- Per‑room live leaderboards.

## License

MIT © [shubhyagami](https://github.com/shubhyagami)

## Community & Support

- Issues: <https://github.com/shubhyagami/gameroom/issues>  
- Discussions: <https://github.com/shubhyagami/gameroom/discussions>  
- Discord: <https://discord.gg/gameroom>
