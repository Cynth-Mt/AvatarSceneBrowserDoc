---
icon: material/help-circle
---

# 常见问题

### Q: 是否支持所有渲染管线？

A: 本插件在Built-in下开发。应该和渲染管线关系不大。

### Q: 截图很多，占用大，切换格式后旧文件未清理？

A: 在 v0.04 起，截图保存前会自动清理同名不同扩展（含 .meta），确保仅保留一个版本。可在 `Screenshot Settings...` 中切换 PNG/JPEG 和设置 JPEG 质量。
或者可以手动删除 `Assets/CYN-lab/Avatar_Scene_Browser/Screenshot`

### Q: 场景重命名/移动后丢失追踪怎么办？

A: 已升级为 GUID 追踪系统，避免路径变化导致数据丢失。若历史数据存在问题，请使用“GUID Batch Update Tool”批量修复。参见  [GUID 批量更新工具](./guid-batch-update-tool.md)页面。


## 授权与支持

### Q: 此插件可以用于商业项目吗？

A: 是的，Avatar Scene Browser 可以用于商业项目。

### Q: 为什么免费

A: 因为后续无法保证后续的维护。。。

------