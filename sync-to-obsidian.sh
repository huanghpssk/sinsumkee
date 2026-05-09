#!/bin/bash
# sync-to-obsidian.sh
# 小龙虾 → 黄总 Obsidian 自动同步脚本
# 用法：./sync-to-obsidian.sh ["提交信息"]

VAULT_DIR="/root/.openclaw/workspace/obsidian-sync"
COMMIT_MSG="${1:-auto-sync: $(date '+%Y-%m-%d %H:%M')}"

cd "$VAULT_DIR" || exit 1

# 检查是否有变更
if [ -z "$(git status --porcelain)" ]; then
    echo "[sync] 没有新变更，跳过推送。"
    exit 0
fi

# 确保用户名和邮箱已配置（首次运行需要）
git config user.email "xiaolongxia@openclaw.ai" 2>/dev/null || true
git config user.name "小龙虾" 2>/dev/null || true

git add .
git commit -m "$COMMIT_MSG"
git push origin main

if [ $? -eq 0 ]; then
    echo "[sync] ✅ 已推送至远程仓库：$COMMIT_MSG"
else
    echo "[sync] ❌ 推送失败，请检查网络或 Token 状态。"
    exit 1
fi
