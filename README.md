# 小龙虾 × 黄总 协作知识库

> **自动同步机制**：服务器端产出 → Git 推送 → Obsidian 拉取 → 秒级同步

## 目录结构

```
.
├── 00-Inbox/           # 入口暂存。我推送的新文档先到这里，黄总可定期整理
├── 01-Projects/        # 按项目分类的核心成果
│   ├── AI-Strategy/    # AI 落地战略、走访笔记、方案
│   ├── Catering-Ops/   # 餐饮经营、组织发展
│   └── Research/       # 深度研究、人物/技术调研
├── 02-Daily/           # 日报、heartbeat 记录、临时备忘
├── 03-Resources/       # 参考资料、外部剪藏、链接汇总
├── 04-Archive/         # 已完结项目的归档
├── Templates/          # 文档模板
├── Attachments/        # 图片、PDF、附件
└── README.md           # 本文件
```

## 同步机制说明

| 环节 | 动作 | 频率 |
|------|------|------|
| **产出** | 我完成文档 → 写入对应目录 | 实时 |
| **推送** | 自动 `git commit && push` | 即时触发 / 每小时批量 |
| **拉取** | Obsidian Git 插件自动 `pull` | 每 5 分钟 / 启动时 |

## 文档规范

所有自动推送的文档均遵循以下格式：
- **YAML Frontmatter**：标题、日期、标签、来源、状态
- **标准化标签**：`#inbox` `#project/xxx` `#daily` `#resource`
- **Obsidian 双链**：`[[相关文档]]` 语法
- **附件统一**：图片存 `Attachments/`，引用用 `![[Attachments/xxx.png]]`

---

*维护者：小龙虾 🖤 | 同步状态：待配置 Git Remote*
