# GUID 批量更新工具

本页汇总自项目内的《GUIDBatchUpdateTool_使用说明.md》，作为 Wiki 版本以便查阅与搜索。

## 打开工具

- 快捷方式：在主窗口顶部点击蓝色“GUID工具”按钮
- 菜单路径：`Tools → CYN-lab → AvatarSceneBrowser → GUID Batch Update Tool`

## 界面与功能

### 控制按钮
- 检查数据：重新加载并分析 `scenes_data.json`
- 修复所有问题：修复检测到的 GUID 与路径问题
- 仅显示问题项：过滤出有问题的条目

### 数据列说明
- 记录路径 / 实际路径
- 状态（正常 / 需更新 / 文件缺失 / 无GUID / 异常）
- 当前GUID / 实际GUID
- 操作（智能修复）

### 状态与颜色
- 绿色：正常
- 黄色：需注意或更新（如无GUID/需更新）
- 红色：文件缺失

## 使用场景

- 定期检查：点击“检查所有GUID”，查看统计与问题报告
- 文件重命名后：勾选“仅显示问题项”，执行“修复所有问题”
- 项目迁移后：刷新数据并检查是否存在 GUID 问题
- 单个修复：在目标行点击“修复”

## 操作流程（批量）

```
1) 打开工具
2) 检查所有GUID
3) 查看问题统计
4) 修复所有问题（含确认对话框）
5) 等待完成并查看结果
```

## 注意事项

- 建议在批量修复前备份 `scenes_data.json`
- 确认对话框请认真阅读
- 确保具备项目目录写入权限

## 技术要点

- 检测：文件存在性 / GUID 有效性 / GUID 一致性
- 修复：从 AssetDatabase 获取正确 GUID → 更新 `scenes_data.json` → 重建基于 GUID 的结构 → 保存
- 数据格式示例：

```json
{
  "scenes": [
    {
      "scenePath": "Assets/MyScene.unity",
      "sceneGUID": "a1b2c3d4...",
      "screenshotPath": "Assets/Screenshots/MyScene.png",
      "tags": ["tag1", "tag2"]
    }
  ]
}
```

## 关联与入口

- 与主窗口联动：问题修复后可触发刷新
- 与菜单结构：统一位于 `Tools/CYN-lab/AvatarSceneBrowser/`
- 与截图设置：问题修复后截图路径也会保持一致性
