# 常见问题

## 安装与设置

### Q: 插件支持哪些Unity版本？

A: Avatar Scene Browser 插件支持 Unity 2020.3 LTS 及以上版本。我们建议使用最新的 LTS 版本以获得最佳性能和兼容性。

### Q: 是否支持所有渲染管线？

A: 是的，Avatar Scene Browser 支持 Built-in、URP 和 HDRP 渲染管线。插件会自动检测项目使用的渲染管线并适配相应的着色器和材质。

### Q: 安装后找不到插件菜单？

A: 插件入口已统一至 `Tools → CYN-lab → AvatarSceneBrowser/`。如未见到：
- 重启 Unity 编辑器
- 检查控制台错误
- 确认插件位于 `Assets/CYN-lab/Avatar_Scene_Browser`
- 确认 Unity 版本兼容

### Q: 截图很多，占用大，切换格式后旧文件未清理？

A: 在 v0.04 起，截图保存前会自动清理同名不同扩展（含 .meta），确保仅保留一个版本。可在 `Screenshot Settings...` 中切换 PNG/JPEG 和设置 JPEG 质量。

### Q: 场景重命名/移动后丢失追踪怎么办？

A: 已升级为 GUID 追踪系统，避免路径变化导致数据丢失。若历史数据存在问题，请使用“GUID Batch Update Tool”批量修复。参见《GUID 批量更新工具》页面。

## 使用问题

### Q: 如何添加自定义化身模型？

A: 将化身模型放置在您配置的资源路径中 (默认为 `Assets/Resources/Avatars`)。确保模型使用了标准 Humanoid 骨骼设置或符合 Avatar Scene Browser 定义的自定义骨骼结构。模型导入后，可以使用插件窗口的刷新按钮更新资源列表。

### Q: 为什么有些动画在我的化身上不能正常播放？

A: 动画兼容性问题通常由以下原因导致：
- 化身骨骼结构与动画不兼容
- 动画文件未正确导入或设置
- 化身的 Avatar 定义有误

请确保您的化身模型正确设置了 Avatar Definition (在导入设置中选择 "Humanoid")，并且动画文件与该骨骼结构兼容。

### Q: 能否在运行时动态修改化身？

A: 是的，您可以使用 `AvatarInstance` 类的属性设置方法动态修改化身外观和属性。例如 `SetColorProperty()` 可以修改颜色属性，`SetTextureProperty()` 可以更换纹理。修改后请调用 `ApplyProperties()` 使更改生效。



## 技术问题

### Q: 如何解决"找不到资源路径"错误？

A: 此错误通常表示配置的资源路径不存在或路径格式不正确。确保：
- 资源路径确实存在于您的项目中
- 路径格式符合 Unity 要求 (例如 "Assets/Resources/MyAvatars")
- 如果使用 Resources 文件夹，确保资源放在其中
- 检查权限问题，确保文件夹可读

### Q: 如何排查内存泄漏问题？

A: 如果怀疑存在内存泄漏，请：
- 确保不再使用的化身调用了 `ReleaseAvatar()` 方法
- 避免频繁切换大量化身，复用已加载的资源
- 使用 Unity Profiler 监控内存使用情况
- 更新到最新版本的插件，旧版本可能存在已修复的内存问题



如果遇到兼容性问题，请联系我们的支持团队，提供详细的冲突情况和错误日志。

### Q: 如何导出和分享我的化身配置？

A: 您可以使用以下方法导出配置：
- 使用 `SaveCurrentSetup()` 方法将当前配置保存为文件
- 手动备份 `Assets/Resources/AvatarSceneBrowser/Config/` 目录下的配置文件
- 使用 `AvatarUtility.ExportAvatarToPrefab()` 将单个化身导出为预制体

## 授权与支持

### Q: 此插件可以用于商业项目吗？

A: 是的，Avatar Scene Browser 可以用于商业项目。请查看随插件提供的授权协议了解具体条款。

### Q: 如何获取技术支持？

A: 您可以通过以下方式获取支持：
- 查阅本文档和API参考
- 访问我们的官方论坛
- 发送邮件至 support@cynlab.com
- 在 GitHub 仓库提交 Issue

### Q: 是否提供源代码？

A: 标准版本不包含源代码。如需源代码访问权限，请购买专业版或企业版。

### Q: 未来会添加哪些功能？

A: 我们计划的功能包括：
- 更多化身自定义选项
- 高级布料物理系统
- 面部表情编辑器
- 批量处理工具增强
- VR/AR 支持改进
- 与第三方角色系统的集成 