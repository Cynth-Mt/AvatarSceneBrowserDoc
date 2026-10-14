# 多语言设置说明 / Multi-language Setup

## 已配置的语言 / Configured Languages

✅ 简体中文 (zh) - 默认语言
✅ 日本語 (ja) - 已完成
✅ English (en) - 已完成

## 文件结构 / File Structure

多语言文档使用后缀命名方式：

```text
docs/
├── index.md                  # 中文版（默认）
├── index.ja.md               # 日文版
├── index.en.md               # 英文版
├── tutorial.md / tutorial.ja.md / tutorial.en.md
├── main-window.md / main-window.ja.md / main-window.en.md
├── guid-batch-update-tool.md / guid-batch-update-tool.ja.md / guid-batch-update-tool.en.md
├── tag-manager.md / tag-manager.ja.md / tag-manager.en.md
├── faq.md / faq.ja.md / faq.en.md
├── update-history.md / update-history.ja.md / update-history.en.md
└── img/                      # 三种语言共用图片
```

## 安装依赖 / Install Dependencies

在构建或预览之前，需要安装新的依赖：

```bash
# 激活虚拟环境（如果使用）
source venv/bin/activate

# 安装依赖
pip install -r requirements.txt
```

## 本地预览 / Local Preview

```bash
# 激活虚拟环境
source venv/bin/activate

# 启动本地服务器
mkdocs serve
```

访问 http://127.0.0.1:8000/ 查看文档，页面右上角会有语言切换器。

## 构建 / Build

```bash
# 激活虚拟环境
source venv/bin/activate

# 构建静态网站
mkdocs build
```

构建后的文件位于 `site/` 目录，包含所有语言版本。

## 添加新语言 / Adding New Languages

如果需要添加其他语言：

1. 在 `mkdocs.yml` 的 `plugins.i18n.languages` 中添加新语言配置
2. 为每个文档创建对应的翻译文件（例如 `index.en.md`）
3. 在 `nav_translations` 中添加导航翻译

## 工作原理 / How It Works

- 使用 `mkdocs-static-i18n` 插件实现多语言支持
- `docs_structure: suffix` - 使用文件后缀来区分语言（例如 `.ja.md`）
- `fallback_to_default: true` - 如果某个页面没有翻译版本，将显示默认语言版本
- `reconfigure_material: true` - 自动配置 Material 主题的多语言支持
- `reconfigure_search: true` - 自动配置搜索功能支持多语言

## 注意事项 / Notes

1. **图片共享**：所有语言版本共享 `docs/img/` 目录下的图片
2. **导航翻译**：导航菜单的翻译在 `mkdocs.yml` 的 `nav_translations` 中配置
3. **搜索功能**：搜索功能已配置中文、日文和英文
4. **URL结构**：不同语言的页面会生成不同的URL路径（中文位于根路径，日文使用 `/ja/`，英文使用 `/en/`）

## 参考文档 / References

- [mkdocs-static-i18n 文档](https://github.com/ultrabug/mkdocs-static-i18n)
- [MkDocs Material 多语言配置](https://squidfunk.github.io/mkdocs-material/setup/changing-the-language/)

