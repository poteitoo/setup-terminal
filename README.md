# Zsh環境セットアップ

このリポジトリは、macOS用のZsh環境を自動的にセットアップするためのスクリプトです。

## 機能

- Homebrewパッケージの自動インストール
- Zinit（Zshプラグインマネージャー）のセットアップ
- Powerlevel10k テーマの設定
- WezTermターミナルエミュレータのインストールと設定
- 便利なツールのインストールと設定
- エイリアスの設定

## インストールされるツール

### コマンドラインツール
- **zsh**: Zシェル
- **zinit**: 高速なZshプラグインマネージャー
- **fzf**: コマンドライン用のファジーファインダー
- **zoxide**: スマートなディレクトリナビゲーター
- **bat**: syntaxハイライト機能付きのcatコマンド
- **eza**: モダンなlsコマンドの代替
- **fd**: 高速なfindコマンドの代替
- **ripgrep**: 高速なgrepコマンドの代替
- **bun**: 高速なJavaScriptランタイム
- **Powerlevel10k**: カスタマイズ可能なZshテーマ

### アプリケーション
- **WezTerm**: GPU加速されたクロスプラットフォームターミナルエミュレータ

## 使い方

1. リポジトリをクローン:
```bash
git clone <repository-url>
cd setup-terminal
```

2. インストールスクリプトを実行:
```bash
chmod +x install_zsh_env.sh
./install_zsh_env.sh
```

3. 新しいターミナルセッションを開始するか、以下を実行:
```bash
source ~/.zshrc
```

4. Powerlevel10kの設定（初回のみ）:
```bash
p10k configure
```

## 設定されるエイリアス

- `ll`: ファイル一覧表示（アイコン付き）
- `la`: 隠しファイルを含む一覧表示（アイコン付き）
- `gs`: git status
- `ga`: git add .
- `gcmsg`: git commit -m
- `..`: 親ディレクトリへ移動
- `...`: 2つ上のディレクトリへ移動
- `cat`: batコマンドを使用（syntaxハイライト付き）
- `worktree`: git worktreeのショートカット

## 注意事項

- インストールにはHomebrewが必要です
- 既存の`.zshrc`は`.zshrc.backup`としてバックアップされます
- 既存の`.wezterm.lua`は`.wezterm.lua.backup`としてバックアップされます
- macOS環境でのみテスト済みです

## カスタマイズ

- `zshrc`ファイルを編集することで、追加の設定やエイリアスを追加できます
- `wezterm.lua`ファイルを編集することで、WezTermの外観や動作をカスタマイズできます