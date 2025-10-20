# AvatarSceneBrowserDoc

在线访问：https://cynth-mt.github.io/AvatarSceneBrowserDoc/

## 🌐 多语言支持

本文档网站现已支持以下语言：

- **简体中文** (默认)
- **日本語** (日文)

访问网站时，可在页面右上角切换语言。

## 📁 文档结构

- `docs/` - 文档源文件
  - `*.md` - 中文文档（默认）
  - `*.ja.md` - 日文翻译文档
- `mkdocs.yml` - MkDocs 配置文件
- `overrides/` - 主题自定义文件
- `requirements.txt` - Python 依赖包
- `.github/workflows/deploy.yml` - 自动部署工作流

## 🚀 本地开发

### 安装依赖

```bash
# 激活虚拟环境（如果使用）
source venv/bin/activate

# 安装依赖
pip install -r requirements.txt
```

### 本地预览

```bash
source venv/bin/activate
mkdocs serve
```

访问 http://127.0.0.1:8000/

### 构建网站

```bash
source venv/bin/activate
mkdocs build
```

## 📝 文档维护

### 添加或更新中文文档

直接编辑 `docs/` 目录下的 `*.md` 文件。

### 添加或更新日文文档

编辑 `docs/` 目录下对应的 `*.ja.md` 文件。

### 添加新语言

详见 [MULTILANG_SETUP.md](./MULTILANG_SETUP.md)

## 🔧 技术栈

- [MkDocs](https://www.mkdocs.org/) - 文档生成器
- [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) - Material 主题
- [mkdocs-static-i18n](https://github.com/ultrabug/mkdocs-static-i18n) - 多语言支持插件
- [mkdocs-git-revision-date-localized](https://github.com/timvink/mkdocs-git-revision-date-localized-plugin) - Git 修订日期插件
