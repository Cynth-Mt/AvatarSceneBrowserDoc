---
icon: material/menu
---

# Avatar Scene Browser 菜单结构

## 菜单组织

为了更好地组织工具和避免菜单重复，Avatar Scene Browser 的所有功能整合在统一的菜单结构下：

```
Tools
└── CYN-lab
    └── AvatarSceneBrowser
        ├── Main Window              # 主窗口 - 场景浏览和管理
        ├── GUID Batch Update Tool   # GUID 批量更新工具
        └── Screenshot Settings...   # 截图格式/质量设置
```

## 各工具说明

### 1. Main Window（主窗口）
**菜单路径**：`Tools → CYN-lab → AvatarSceneBrowser → Main Window`

**功能**：
- 场景截图浏览
- 标签管理和筛选
- 场景快速打开（支持双击）
- 截图刷新与管理
- 多语言支持

**用途**：日常的场景管理和浏览

### 2. GUID Batch Update Tool（GUID 批量更新工具）
**菜单路径**：`Tools → CYN-lab → AvatarSceneBrowser → GUID Batch Update Tool`

**功能**：
- 检查 `scenes_data.json` 中的 GUID 状态
- 批量修复 GUID/路径问题
- 单个场景 GUID 修复
- 场景文件状态监控与统计

**用途**：维护和修复 GUID 数据，确保系统稳定性

### 3. Screenshot Settings...（截图设置）
**菜单路径**：`Tools → CYN-lab → AvatarSceneBrowser → Screenshot Settings...`

**功能**：
- 切换截图格式（PNG / JPEG）
- 配置 JPEG 质量
- 保存前清理同名不同扩展（含 .meta），保持单一版本

## 菜单结构优势

### 1) 清晰层次
- 所有相关工具集中在一个菜单组下
- 避免重复占用菜单空间
- 便于用户查找

### 2) 职责分离
- 主窗口用于日常使用
- 工具窗口用于维护

### 3) 可扩展
- 未来新增工具可继续在该结构下扩展
- 保持一致的导航体验

## 快捷访问

### 常用操作
1. 打开主窗口：`Tools → CYN-lab → AvatarSceneBrowser → Main Window`
2. 检查 GUID 状态：`Tools → CYN-lab → AvatarSceneBrowser → GUID Batch Update Tool`

### 工具栏快捷方式
主窗口还可通过工具栏按钮快速访问：
- 截图按钮：直接截图当前场景
- 浏览器按钮：打开主窗口

## 版本历史要点

- v0.2 菜单重组（2025.6.13）：建立统一结构
- v0.4（2025.8.23）：所有入口统一至 `Tools/CYN-lab/AvatarSceneBrowser/`


