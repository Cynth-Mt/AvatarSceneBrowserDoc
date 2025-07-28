# Avatar Scene Browser 文档站点

这是 Avatar Scene Browser Unity 插件的文档站点源码。

## 在线访问

文档已部署在：https://cynth-mt.github.io/AvatarSceneBrowserDoc/

## 本地开发

### 环境准备

#### 自动设置（推荐）

运行设置脚本自动配置环境：

```bash
./setup.sh
```

#### 手动设置

1. 安装 Python 3.x
2. 创建虚拟环境：
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # macOS/Linux
   ```
3. 安装依赖：
   ```bash
   pip install -r requirements.txt
   ```

### 本地预览

运行以下命令启动本地服务器：

```bash
./serve.sh
```

或直接使用 MkDocs 命令：

```bash
mkdocs serve
```

文档将在 http://127.0.0.1:8000 可访问。

### 构建静态站点

```bash
mkdocs build
```

构建的文件将输出到 `site/` 目录。

## 部署

本项目已配置 GitHub Actions，推送到 `main` 分支后会自动部署到 GitHub Pages。

首次部署需要在仓库设置中启用 GitHub Pages：
1. 进入仓库设置 > Pages
2. Source 选择 "GitHub Actions"

## 文档结构

- `docs/` - 文档源文件
- `mkdocs.yml` - MkDocs 配置文件
- `overrides/` - 主题自定义文件
- `.github/workflows/deploy.yml` - 自动部署工作流

## 贡献

欢迎提交 Issue 或 Pull Request 来改进文档。 