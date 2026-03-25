# OpenFang Coolify 範本

使用預建置的二進位檔案在 Coolify 上部署 OpenFang。無需編譯。

## 功能特色

- **快速部署**：約 30 秒，相較於從原始碼建置需 10 分鐘以上
- **Linux ARM64 優化**：使用預建置的 `aarch64-unknown-linux-gnu` 二進位檔案
- **Coolify 就緒**：一鍵部署，支援環境變數設定

## 需求

- Coolify 實例
- Linux ARM64 伺服器

## 部署

### 1. 新增至 Coolify

1. 前往 Coolify 控制台
2. 建立新資源 → Docker Compose
3. 設定 Git 儲存庫：`https://github.com/YOUR_USERNAME/openfang-coolify-template`
4. 部署

### 2. 設定環境變數

在 Coolify 中設定以下環境變數：

```env
# OpenFang 版本（選用，預設為 v0.5.1）
OPENFANG_VERSION=v0.5.1

# LLM 供應商 API 金鑰
ANTHROPIC_API_KEY=your-key
OPENAI_API_KEY=your-key
GROQ_API_KEY=your-key
DEEPSEEK_API_KEY=your-key
OPENROUTER_API_KEY=your-key

# 頻道轉接器（選用）
TELEGRAM_BOT_TOKEN=your-token
DISCORD_BOT_TOKEN=your-token
SLACK_BOT_TOKEN=your-token
```

### 3. 存取

控制台將可透過 `http://your-server:4200` 存取

## 版本更新

更新 OpenFang 版本：

1. 前往 Coolify 控制台
2. 編輯環境變數
3. 將 `OPENFANG_VERSION` 變更為所需版本
4. 重新部署

可用版本：https://github.com/RightNow-AI/openfang/releases

## 連接埠

| 連接埠 | 服務 |
|--------|---------|
| 4200 | OpenFang 控制台 |

## 資料卷

| 資料卷 | 用途 |
|--------|---------|
| openfang-data | 永久資料儲存 |

## 授權條款

MIT - OpenFang 採用 MIT 授權條款