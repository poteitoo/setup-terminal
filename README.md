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
- **`neo-tree.lua`** - ファイルエクスプローラー
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

### Neovimキーバインド

#### 基本操作
- **リーダーキー**: `Space`
- **ファイル保存**: `Ctrl+s` (ノーマル/インサートモード)
- **終了**: `<leader>q` (終了), `<leader>Q` (強制終了)
- **検索ハイライト解除**: `<leader>nh`
- **数値増減**: `<leader>+` / `<leader>-`

#### ウィンドウ操作
- **ウィンドウ移動**: `Ctrl+h/j/k/l`
- **ウィンドウサイズ変更**: `Ctrl+矢印キー`
- **ウィンドウ分割**:
  - `<leader>sv` - 垂直分割
  - `<leader>sh` - 水平分割
  - `<leader>se` - ウィンドウサイズを均等化
  - `<leader>sx` - ウィンドウを閉じる

#### バッファ・タブ操作
- **バッファ移動**: `Shift+h/l`
- **タブ操作**:
  - `<leader>to` - 新しいタブ
  - `<leader>tx` - タブを閉じる
  - `<leader>tn` - 次のタブ
  - `<leader>tp` - 前のタブ

#### ファイル検索 (Telescope)
- `<leader>ff` - ファイル検索
- `<leader>fr` - 最近使用したファイル
- `<leader>fs` - 文字列検索 (grep)
- `<leader>fc` - カーソル下の文字列を検索
- `<leader>fb` - バッファ一覧
- `<leader>fh` - ヘルプタグ検索

#### ファイルエクスプローラー (Neo-tree)
- `<leader>ee` - ファイルツリーをトグル
- `<leader>ef` - 現在のファイルを表示
- `<leader>eg` - Gitステータスを表示
- `<leader>eb` - バッファエクスプローラーをトグル

#### LSP機能
- `gR` - 参照を表示
- `gD` - 宣言へジャンプ
- `gd` - 定義へジャンプ
- `gi` - 実装へジャンプ
- `gt` - 型定義へジャンプ
- `K` - ホバー情報表示
- `<leader>ca` - コードアクション
- `<leader>rn` - リネーム
- `<leader>D` - バッファの診断情報
- `<leader>d` - 行の診断情報
- `[d` / `]d` - 前/次の診断へ
- `<leader>rs` - LSP再起動

#### 自動補完 (nvim-cmp)
- `Ctrl+j/k` - 補完候補の選択
- `Ctrl+b/f` - ドキュメントスクロール
- `Ctrl+Space` - 補完を開く
- `Ctrl+e` - 補完をキャンセル
- `Enter` - 補完を確定

#### テキスト編集
- **ビジュアルモード**:
  - `<` / `>` - インデント調整（選択維持）
  - `Alt+j/k` - 選択行を上下に移動
  - `p` - ペースト（元のテキストを保持）
- **コメント**: `gcc` (行), `gc` (選択範囲)
- **サラウンド**: `ys`, `cs`, `ds` (追加/変更/削除)
- **エスケープ**: `jk` または `jj` (インサートモード)

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