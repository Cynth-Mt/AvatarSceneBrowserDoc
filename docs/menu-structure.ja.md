# Avatar Scene Browser メニュー構造

## メニュー構成

ツールの整理とメニューの重複を避けるため、Avatar Scene Browser のすべての機能は統一されたメニュー構造の下に統合されています：

```
Tools
└── CYN-lab
    └── AvatarSceneBrowser
        ├── Main Window              # メインウィンドウ - シーンの閲覧と管理
        ├── GUID Batch Update Tool   # GUID 一括更新ツール
        └── Screenshot Settings...   # スクリーンショット形式/品質設定
```

## 各ツールの説明

### 1. Main Window（メインウィンドウ）
**メニューパス**：`Tools → CYN-lab → AvatarSceneBrowser → Main Window`

**機能**：
- シーンスクリーンショットの閲覧
- タグ管理とフィルタリング
- シーンのクイックオープン（ダブルクリックに対応）
- スクリーンショットの更新と管理
- 多言語サポート

**用途**：シーン管理と閲覧[詳細](main-window.md)

### 2. GUID Batch Update Tool（GUID 一括更新ツール）
**メニューパス**：`Tools → CYN-lab → AvatarSceneBrowser → GUID Batch Update Tool`

**機能**：
- `scenes_data.json` 内の GUID 状態をチェック
- GUID/パス問題の一括修復
- 個別シーンの GUID 修復
- シーンファイル状態の監視と統計

**用途**：GUID データのメンテナンスと修復、システムの安定性確保[詳細](guid-batch-update-tool.md)

### 3. Screenshot Settings...（スクリーンショット設定）
**メニューパス**：`Tools → CYN-lab → AvatarSceneBrowser → Screenshot Settings...`

**機能**：
- スクリーンショット形式の切り替え（PNG / JPEG）
- JPEG 品質の設定
- 保存前に同名の異なる拡張子（.meta を含む）をクリーンアップし、単一バージョンを保持

## メニュー構造の利点

### 1) 明確な階層
- 関連するすべてのツールが1つのメニューグループに集約
- メニュースペースの重複使用を回避
- ユーザーが簡単に検索可能

### 2) 責任の分離
- メインウィンドウは日常使用向け
- ツールウィンドウはメンテナンス用

### 3) 拡張性
- 将来的に新しいツールを追加する際も、この構造下で拡張可能
- 一貫したナビゲーション体験を維持

## クイックアクセス

### よく使う操作
1. メインウィンドウを開く：`Tools → CYN-lab → AvatarSceneBrowser → Main Window`
2. GUID 状態をチェック：`Tools → CYN-lab → AvatarSceneBrowser → GUID Batch Update Tool`

### ツールバーショートカット
メインウィンドウはツールバーボタンからもクイックアクセス可能：
- スクリーンショットボタン：現在のシーンを直接スクリーンショット
- ブラウザボタン：メインウィンドウを開く

## バージョン履歴のポイント

- v0.2 メニュー再編成（2025.6.13）：統一構造を確立
- v0.4（2025.8.23）：すべてのエントリポイントを `Tools/CYN-lab/AvatarSceneBrowser/` に統一



