# 安装指南

## 系统要求

在安装 Avatar Scene Browser 之前，请确保您的环境符合以下要求：

### Unity版本要求
- **推荐版本**: Unity 2022.3.22f1 LTS (VRChat标准版本)
- **最低要求**: Unity 2020.3 LTS 或更高版本
- **渲染管线**: 支持Built-in、URP、HDRP

### 操作系统
- Windows 10/11 (64位)
- macOS 10.15 或更高版本
- Linux (Ubuntu 18.04 LTS 或等效版本)

## 安装方式

### 方式一：手动安装（推荐）

1. **获取插件文件**
   - 下载Avatar Scene Browser插件包
   - 解压到临时文件夹

2. **复制到项目中**
   ```
   将整个 CYN-lab 文件夹复制到您的Unity项目的 Assets 目录下
   
   项目结构应该类似：
   Assets/
   └── CYN-lab/
       └── Avatar_Scene_Browser/
           ├── Editor/
           ├── Data/
           ├── Screenshot/
           └── TODO.md 等文档
   ```

3. **Unity导入**
   - Unity会自动检测新文件并开始导入
   - 等待编译完成（控制台不再显示编译信息）

### 方式二：Unity Package导入

1. **准备Package文件**
   - 获取 `.unitypackage` 格式的插件包

2. **导入到Unity**
   - 在Unity编辑器中选择 `Assets → Import Package → Custom Package...`
   - 选择下载的 `.unitypackage` 文件
   - 在导入窗口中确认所有文件都被选中
   - 点击 `Import` 按钮

## 验证安装

安装完成后，通过以下步骤验证安装是否成功：

### 1. 检查菜单项
在Unity菜单栏中应该出现：
```
Tools
└── Avatar_Scene_Browser
    ├── Main Window           # 主窗口
    └── GUID Batch Update Tool # GUID批量更新工具
```

### 2. 检查文件结构
在Project面板中确认文件夹结构：
```
Assets/
└── CYN-lab/
    └── Avatar_Scene_Browser/
        ├── Editor/                    # 编辑器脚本
        │   ├── MainWindow.cs
        │   ├── GUIDBatchUpdateTool.cs
        │   ├── TagManager.cs
        │   └── Resources/
        │       └── Localization/      # 多语言文件
        ├── Data/                      # 数据文件夹
        └── Screenshot/                # 截图存储文件夹
```

### 3. 测试基本功能
1. 点击 `Tools → Avatar_Scene_Browser → Main Window`
2. 应该能够正常打开Avatar Scene Browser主窗口
3. 窗口应该显示当前项目中的场景文件（如果有的话）

## 配置数据文件夹

Avatar Scene Browser会自动创建以下数据文件夹（如果不存在）：

- **Data文件夹**: 存储场景数据和标签信息
  - `scenes_data.json` - 场景数据文件
  - `tags.json` - 标签数据文件

- **Screenshot文件夹**: 存储场景截图文件
  - 按照 `[场景名称].png` 格式命名

## 工具栏按钮（可选）

安装后，Scene视图的工具栏会自动显示两个新按钮：
- 📷 **截图按钮** - 快速为当前场景截图
- 🖼️ **浏览器按钮** - 快速打开Avatar Scene Browser窗口

如果按钮没有显示，请尝试：
1. 重启Unity编辑器
2. 检查Scene视图工具栏是否被其他插件占用
3. 查看控制台是否有相关错误信息

## 故障排除

### 安装后找不到菜单项
**可能原因与解决方案：**
- **编译错误**: 检查控制台是否有编译错误，修复后重新导入
- **Unity版本不兼容**: 确认您的Unity版本满足最低要求
- **文件缺失**: 确认所有插件文件都正确导入到项目中
- **权限问题**: 确保Unity有权限读写项目文件夹

### 工具栏按钮不显示
**解决方案：**
1. 重启Unity编辑器
2. 确认Scene视图工具栏区域足够显示按钮
3. 检查是否有其他插件占用工具栏空间

### 多语言显示异常
**解决方案：**
1. 确认 `Editor/Resources/Localization/` 文件夹下包含语言文件：
   - `zh-CN.json` (中文)
   - `ja-JP.json` (日文) 
   - `en-US.json` (英文)
2. 重启Unity编辑器重新加载语言资源

## 卸载插件

如需卸载Avatar Scene Browser：

1. **删除插件文件夹**
   ```
   删除 Assets/CYN-lab/Avatar_Scene_Browser/ 整个文件夹
   ```

2. **清理数据文件（可选）**
   - 如果不需要保留场景数据和截图，可以删除Data和Screenshot文件夹
   - 如果需要保留数据以便以后重新使用，请保留这些文件夹

3. **重启Unity**
   - 重启Unity编辑器以完全清除缓存

---

安装完成后，您可以查看[快速开始](getting-started.md)来了解如何使用Avatar Scene Browser的基本功能。 