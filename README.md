# Terminal Setup

macOS向けのターミナル環境自動セットアップツール

## 概要

このリポジトリは、Zsh、WezTerm、Neovimを中心としたモダンなターミナル環境を自動でセットアップするためのスクリプトと設定ファイルを提供します。

## インストール

```bash
git clone https://github.com/poteitoo/setup-terminal.git
cd setup-terminal
chmod +x install_zsh_env.sh
./install_zsh_env.sh
```

## 含まれる設定ファイル

### Zsh設定 (`zshrc`)
- **Zinit** - 高速なZshプラグインマネージャー
- **プラグイン**:
  - `zsh-autosuggestions` - コマンド履歴に基づく自動補完
  - `zsh-syntax-highlighting` - コマンドのシンタックスハイライト
  - `zsh-completions` - 追加の補完定義
  - `fzf-tab` - fzfを使用したタブ補完
- **エイリアス**:
  - `ls` → `eza --icons` (アイコン付きファイルリスト)
  - `ll` → `eza -l --icons` (詳細表示)
  - `la` → `eza -la --icons` (隠しファイルも表示)
  - `tree` → `eza --tree --icons` (ツリー表示)
  - `cat` → `bat` (シンタックスハイライト付き表示)
  - Git関連のエイリアス多数
- **その他の機能**:
  - fzfとの統合
  - zoxideによる高速ディレクトリ移動
  - カスタムプロンプト

### WezTerm設定 (`wezterm.lua`)
- **カラースキーム**: Tokyo Night Storm
- **フォント**: Hack Nerd Font (サイズ: 13.0)
- **ウィンドウ設定**:
  - 透明度: 0.9
  - 背景ぼかし: 20
  - 装飾なしウィンドウ
  - パディング: 15
- **タブバー**: 下部に配置、Fancy style
- **その他**: macOS専用の外観設定

### Neovim設定 (`nvim/`)

#### 基本設定
- **`init.lua`** - lazy.nvimのブートストラップとプラグイン管理
- **`lua/config/options.lua`** - エディタの基本設定
  - 相対行番号表示
  - インデント設定 (2スペース)
  - 検索設定 (大文字小文字を賢く判定)
  - クリップボード連携
  - その他の快適な編集設定
- **`lua/config/keymaps.lua`** - キーマッピング
  - リーダーキー: スペース
  - ウィンドウ操作、バッファ操作
  - ファイル保存、終了コマンド
- **`lua/config/autocmds.lua`** - 自動コマンド
  - ヤンク時のハイライト
  - 保存時の末尾空白削除
  - ファイル変更の自動検出

#### プラグイン設定 (`lua/plugins/`)
- **`colorscheme.lua`** - Tokyo Nightテーマ
- **`telescope.lua`** - ファジーファインダー
  - ファイル検索、文字列検索、バッファ管理
- **`treesitter.lua`** - 高度なシンタックスハイライト
  - 主要言語のサポート
- **`lsp.lua`** - Language Server Protocol設定
  - 自動補完、定義ジャンプ、リファクタリング
- **`cmp.lua`** - 自動補完エンジン
- **`nvim-tree.lua`** - ファイルエクスプローラー
- **`ui.lua`** - UI拡張
  - ステータスライン (lualine)
  - インデントガイド
  - Gitサイン表示
  - コメント操作
  - 自動ペア、サラウンド操作

## インストールされるツール

インストールスクリプトは以下のツールを自動でインストールします：

- **zsh** - モダンなシェル
- **zinit** - Zshプラグインマネージャー
- **fzf** - ファジーファインダー
- **zoxide** - スマートなディレクトリジャンプ
- **bat** - catの代替（シンタックスハイライト付き）
- **eza** - lsの代替（アイコン、Git統合）
- **fd** - findの代替（高速）
- **ripgrep** - grepの代替（高速）
- **gh** - GitHub CLI
- **neovim** - モダンなVimフォーク
- **bun** - 高速なJavaScriptランタイム
- **Hack Nerd Font** - プログラミング用フォント
- **WezTerm** - GPU加速ターミナルエミュレータ

## 使い方

### 基本的な操作

1. **ファイル検索**: `Ctrl+P` または `<leader>ff` (Neovim内)
2. **ディレクトリ移動**: `z <partial-path>` (zoxide)
3. **履歴検索**: `Ctrl+R` (fzf統合)
4. **ファイルツリー**: `<leader>ee` (Neovim内)

### Gitエイリアス

- `g` - git
- `gst` - git status
- `gco` - git checkout
- `gcm` - git commit -m
- `gp` - git push
- `gl` - git pull
- `glog` - 整形されたgit log
- `gwt` - git worktree

## カスタマイズ

各設定ファイルは必要に応じて編集可能です：

- Zsh設定: `~/.zshrc`を編集
- WezTerm設定: `~/.wezterm.lua`を編集
- Neovim設定: `~/.config/nvim/`内のファイルを編集

## トラブルシューティング

### フォントが正しく表示されない
Hack Nerd Fontがインストールされていることを確認し、ターミナルアプリケーションを再起動してください。

### Neovimプラグインがインストールされない
Neovimを起動すると自動的にlazy.nvimがプラグインをインストールします。手動でインストールする場合は`:Lazy`コマンドを実行してください。

### zshプラグインが読み込まれない
`zinit update`を実行してプラグインを更新してください。

## ライセンス

MIT