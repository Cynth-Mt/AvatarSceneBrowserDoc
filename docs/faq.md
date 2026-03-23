---
icon: material/help-circle
---

# 常见问题

### Q: 是否支持所有渲染管线？

A: 本插件在 Built-in 下开发。截图功能应该和渲染管线关系不大。

### Q: 截图很多，占用大，切换格式后旧文件未清理？

A: 在 v0.04 起，截图保存前会自动清理同名不同扩展（含 .meta），确保仅保留一个版本。可在 `Screenshot Settings...` 中切换 PNG/JPEG 和设置 JPEG 质量。
或者可以手动删除 `Assets/CYN-lab/Avatar_Scene_Browser/Screenshot`。

### Q: 场景重命名/移动后丢失追踪怎么办？

A: 已升级为 GUID 追踪系统，避免路径变化导致数据丢失。若历史数据存在问题，请使用 "GUID Batch Update Tool" 批量修复。参见 [GUID 批量更新工具](./guid-batch-update-tool.md)。

### Q: 多 Avatar 配置截图功能需要什么条件？

A: 需要安装 VRChat SDK（VRCSDK3）。没有 SDK 时，截图仍可正常工作，但不会进行 Avatar 识别和配置管理。

### Q: 缩略图上出现了红色感叹号，是什么意思？

A: 有两种情况：
- **场景文件丢失**：.unity 文件已被删除或移动，请使用 [GUID 工具](guid-batch-update-tool.md) 修复。
- **Avatar 数据异常**：场景从多 Avatar 变为单 Avatar 后，旧的多 Avatar 截图数据尚未清理，或者截图中引用的 Avatar 已从 Hierarchy 中删除。右键点击该缩略图并选择"删除截图数据"可以清理。

### Q: 如何删除某个 Avatar 配置截图？

A: 两种方式：
1. 右键点击画廊中的绿色边框缩略图 → 删除截图数据
2. 选中该配置 → 在右侧"Avatar 配置"列表中点击 ✕ 按钮

---

## 授权与支持

### Q: 此插件可以用于商业项目吗？

A: 是的，Avatar Scene Browser 可以用于商业项目。

### Q: 为什么免费？

A: 因为后续无法保证持续维护。

------