---
icon: material/book-open-variant
---



# クイック使用ガイド

## スクリーンショット

インポート後、Sceneウィンドウ上部のツールバーにボタンが表示されます



![ツールバースクリーンショットボタン](img/toolbar01.png)
![ツールバースクリーンショットボタン](img/toolbar02.png)


- Scene ウィンドウのツールバーにあるスクリーンショットボタンをクリック
   
![スクリーンショットボタン（ライトテーマ）](img/gui_Screenshot_light.png){ width="80" }
--
   - または Unity メニューから `Tools > Avatar Scene Browser > Open Browser` を選択
       - `現在開いているシーンのスクリーンショットを更新` ボタンを使用

   ![現在開いているシーンのスクリーンショットを更新](img/刷新当前打开的场景截图.png)


### 主な機能

- **スクリーンショットプレビュー** - Unity Scene の画面をキャプチャしてプレビューを作成
- **タグシステム** - シーンにタグを追加、複数タグによるフィルタリングと管理をサポート
- **GUID管理** - シーンファイルの名前変更や移動によるデータ損失を防ぐため、Unity GUID システムを採用
- **スクリーンショット並び替え** - スクリーンショットの並び替え


### シーンのスクリーンショット表示エリア
キャプチャした Scene の画面がここに配置表示されます。
[詳細](main-window.md)


### タグシステム

- スクリーンショットプレビューの下に表示されます
- [タグ管理](tag-manager.md)


### GUID管理

[GUID管理ウィンドウ](guid-batch-update-tool.md)


--------

## unityメニュー

```
Tools
└── CYN-lab
    └── AvatarSceneBrowser
        ├── Main Window              # メインウィンドウ - シーンの閲覧と管理
        ├── GUID Batch Update Tool   # GUID 一括更新ツール
        └── Screenshot Settings...   # スクリーンショット形式/品質設定
```

### 1. Main Window（メインウィンドウ）
**メニューパス**：`Tools → CYN-lab → AvatarSceneBrowser → Main Window`

**機能**：
- シーンスクリーンショットの閲覧
- タグ管理とフィルタリング
- シーンのクイックオープン（ダブルクリックに対応）
- スクリーンショットの更新と管理
- 多言語サポート

**用途**：日常的なシーン管理と閲覧。


### 2. GUID Batch Update Tool（GUID 一括更新ツール）
**メニューパス**：`Tools → CYN-lab → AvatarSceneBrowser → GUID Batch Update Tool`

**機能**：
- `scenes_data.json` 内の GUID 状態をチェック
- GUID/パス問題の一括修復
- 個別シーンの GUID 修復
- シーンファイル状態の監視と統計

**用途**：GUID データのメンテナンスと修復、システムの安定性確保。
詳細は[GUID一括更新ツール](./guid-batch-update-tool.md)を参照してください。

### 3. Screenshot Settings...（スクリーンショット設定）
**メニューパス**：`Tools → CYN-lab → AvatarSceneBrowser → Screenshot Settings...`

**機能**：
- スクリーンショット形式の切り替え（PNG / JPEG）
- JPEG 品質の設定
- 保存前に同名の異なる拡張子（.meta を含む）をクリーンアップし、単一バージョンを保持



