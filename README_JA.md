# AvatarSceneBrowserDoc - 日本語版ドキュメント

このドキュメントサイトには日本語翻訳が含まれています。

## 📚 翻訳済みドキュメント

以下のドキュメントが日本語に翻訳されています：

- ✅ ホーム (index.ja.md)
- ✅ 使用チュートリアル (tutorial.ja.md)  
- ✅ メインウィンドウ (main-window.ja.md)
- ✅ メニュー構造 (menu-structure.ja.md)
- ✅ GUID一括更新ツール (guid-batch-update-tool.ja.md)
- ✅ タグ管理ツール (tag-manager.ja.md)
- ✅ よくある質問 (faq.ja.md)
- ✅ 更新履歴 (update-history.ja.md)

## 🌐 多言語サポート

このサイトは以下の言語をサポートしています：

- **简体中文** (デフォルト)
- **日本語**

ウェブサイトの右上隅に言語切り替えボタンがあります。

## 🔧 技術詳細

- **フレームワーク**: MkDocs + Material Theme
- **多言語プラグイン**: mkdocs-static-i18n
- **ドキュメント構造**: サフィックス方式 (.ja.md)

## 📝 翻訳の更新方法

日本語ドキュメントを更新する場合：

1. 対応する `.ja.md` ファイルを編集
2. 変更をコミット
3. ドキュメントを再構築

```bash
source venv/bin/activate
mkdocs build
```

## 🚀 ローカルプレビュー

```bash
source venv/bin/activate
mkdocs serve
```

http://127.0.0.1:8000/ にアクセスして、言語切り替えをテストできます。

---

詳細については、[MULTILANG_SETUP.md](./MULTILANG_SETUP.md) を参照してください。

