# All-in-One App (Scaffold)

This scaffold contains a minimal starter for the All‑In‑One app you requested:
- `apps/web` — Next.js minimal frontend (pages: index, tools/pdf, tools/excel, chat)
- `services/api` — Express API stub (file upload endpoint)
- `services/chat` — Socket.IO server stub
- `services/worker` — LibreOffice worker Dockerfile + convert script
- `infra/docker-compose.yml` — Postgres + Redis for local dev
- `.env.example` files

> This scaffold is *starter code* — it gives a working local development layout and example routes.
> You will need Node.js (>=18), npm, and Docker (for worker + infra) to run everything.

## Quick start (dev)
1. Start infra (Postgres, Redis):
   ```
   cd infra
   docker compose up -d
   ```
2. Start API:
   ```
   cd services/api
   npm install
   node index.js
   ```
3. Start Chat:
   ```
   cd services/chat
   npm install
   node index.js
   ```
4. Start Frontend:
   ```
   cd apps/web
   npm install
   npm run dev
   ```
5. Open frontend at `http://localhost:3000`.

## Notes
- PDF → Word endpoint is a **stub** showing how to accept uploads. Choose CloudConvert or the worker for real conversions.
- Worker should be run in Docker (see `services/worker/Dockerfile`).
- This scaffold is intentionally small so you can run and extend it quickly.

