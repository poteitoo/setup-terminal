#!/bin/bash

set -e

echo "🔧 Homebrew パッケージのインストール"
brew install zsh zinit fzf zoxide bat eza fd ripgrep gh font-hack-nerd-font neovim
brew install --cask wezterm

echo "🔧 Rustのインストール"
curl https://sh.rustup.rs -sSf | sh -s -- -y

echo "💡 FZFセットアップ"
"$(brew --prefix)/opt/fzf/install" --key-bindings --completion --no-update-rc

echo "✅ zshrcをバックアップしてセットアップ"
cp ~/.zshrc ~/.zshrc.backup 2>/dev/null || true
cp ./zshrc ~/.zshrc

echo "🖥️  Wezterm設定ファイルをセットアップ"
cp ~/.wezterm.lua ~/.wezterm.lua.backup 2>/dev/null || true
cp ./wezterm.lua ~/.wezterm.lua

echo "📝 Neovim設定をセットアップ"
mkdir -p ~/.config
cp -r ~/.config/nvim ~/.config/nvim.backup 2>/dev/null || true
cp -r ./nvim ~/.config/

echo "🔧 bunのインストール"
curl -fsSL https://bun.sh/install | bash
