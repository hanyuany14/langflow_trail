#!/bin/bash

# 載入 .env 裡的環境變數
if [ -f .env.local ]; then
  echo "🔐 載入環境變數..."
  set -a
  source .env.local
  set +a
else
  echo "⚠️  找不到 .env.local 檔案，請先建立一個！"
  exit 1
fi

# 啟動 Langflow
echo "🚀 啟動 Langflow..."
poetry run langflow run --env-file .env.local
