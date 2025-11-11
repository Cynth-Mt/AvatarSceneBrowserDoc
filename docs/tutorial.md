---
icon: material/book-open-variant
---


# 快速开始
-------
# 首先开始截图

导入后Scene窗口上方的toolbar会出现按钮



![工具栏截图按钮](img/toolbar01.png)
![工具栏截图按钮](img/toolbar02.png)


- 点击 Scene 窗口工具栏中的截图按钮
   
![截图按钮（亮色主题）](img/gui_Screenshot_light.png){ width="80" }
--
   - 或者在 Unity 菜单中选择 `Tools > Avatar Scene Browser > Open Browser`
       - 使用按键 `刷新当前打开的Scene截图`

   ![刷新当前打开的场景截图](img/刷新当前打开的场景截图.png)



## scene的截图展示区域
截取的Scene的画面在这里，排列显示。
[详情](main-window.md)


## 增加标签

- 可以在右侧的详细里面增加Tag
- 后续的对Tag的编辑在[管理标签](tag-manager.md)

--------

# 打开Scene

Avatar Scene Browser 支持多种便捷的场景打开方式：

### 1. **通过详情面板的“打开”按钮**  
   - 在截图一览中选择某个场景，在右侧详情区域点击【打开此场景】按钮，即可直接打开对应的场景文件。

### 2. **双击场景缩略图快速打开**  
   - 在截图展示区域，直接双击任一场景的缩略图，即可立即跳转并加载该场景。

### 3. **右键菜单“打开场景”**  
   - 右键点击某个场景缩略图，会弹出上下文菜单，选择【打开场景】选项即可完成打开操作。  
   - 右键菜单还支持其它操作（如复制路径、在资源管理器中显示等）。

---
详见：[主窗口介绍](main-window.md)



### GUID管理

[GUID管理窗口](guid-batch-update-tool.md)


--------

# unity菜单

```
Tools
└── CYN-lab
    └── AvatarSceneBrowser
        ├── Main Window              # 主窗口 - 场景浏览和管理
        ├── GUID Batch Update Tool   # GUID 批量更新工具
        └── Screenshot Settings...   # 截图格式/质量设置
```

### 1. Main Window（主窗口）
**菜单路径**：`Tools → CYN-lab → AvatarSceneBrowser → Main Window`

**功能**：
- 场景截图浏览
- 标签管理和筛选
- 场景快速打开（支持双击）
- 截图刷新与管理
- 多语言支持

**用途**：日常的场景管理和浏览。


### 2. GUID Batch Update Tool（GUID 批量更新工具）
**菜单路径**：`Tools → CYN-lab → AvatarSceneBrowser → GUID Batch Update Tool`

**功能**：
- 检查 `scenes_data.json` 中的 GUID 状态
- 批量修复 GUID/路径问题
- 单个场景 GUID 修复
- 场景文件状态监控与统计

**用途**：维护和修复 GUID 数据，确保系统稳定性。
请参见[GUID批量更新工具](./guid-batch-update-tool.md)

### 3. Screenshot Settings...（截图设置）
**菜单路径**：`Tools → CYN-lab → AvatarSceneBrowser → Screenshot Settings...`

**功能**：
- 切换截图格式（PNG / JPEG）
- 配置 JPEG 质量
- 保存前清理同名不同扩展（含 .meta），保持单一版本


