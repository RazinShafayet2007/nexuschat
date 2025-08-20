#!/bin/bash

# Create root directories and files
mkdir -p .github/workflows .vscode docs packages
touch .env.example .gitignore docker-compose.yml Dockerfile.client Dockerfile.server package.json README.md tsconfig.base.json
touch .vscode/settings.json
touch .github/workflows/client-ci.yml .github/workflows/server-ci.yml

# Create 'client' package structure
mkdir -p packages/client/public
mkdir -p packages/client/src/{api,assets,components/common,components/layout,components/chat,context,hooks,pages,lib}
touch packages/client/.env.local packages/client/package.json packages/client/tsconfig.json
touch packages/client/src/api/apiClient.ts packages/client/src/api/chatService.ts
touch packages/client/src/App.tsx packages/client/src/main.tsx

# Create 'server' package structure
mkdir -p packages/server/src/{api/v1,config,controllers,middleware,models,services,sockets,lib}
touch packages/server/.env packages/server/package.json packages/server/tsconfig.json
touch packages/server/src/server.ts
touch packages/server/src/api/v1/{auth.routes.ts,users.routes.ts,chats.routes.ts}
touch packages/server/src/models/{User.model.ts,Message.model.ts,Chat.model.ts}
touch packages/server/src/sockets/socketHandler.ts

# Create 'shared' package structure
mkdir -p packages/shared/src/{types,validation}
touch packages/shared/package.json packages/shared/tsconfig.json
touch packages/shared/src/types/index.ts
touch packages/shared/src/validation/index.ts

echo "✅ File structure for NexusChat created successfully!"

