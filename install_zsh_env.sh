#!/bin/bash

set -e

echo "🔧 Homebrew パッケージのインストール"
brew install zsh zinit fzf zoxide bat eza fd ripgrep gh font-hack-nerd-font neovim
brew install --cask wezterm

echo "💡 FZFセットアップ"
"$(brew --prefix)/opt/fzf/install" --key-bindings --completion --no-update-rc

echo "✅ zshrcをバックアップしてセットアップ"
cp ~/.zshrc ~/.zshrc.backup 2>/dev/null || true
cp ./zshrc ~/.zshrc

echo "🖥️  Wezterm設定ファイルをセットアップ"
cp ~/.wezterm.lua ~/.zshrc.lua.backup 2>/dev/null || true
cp ./wezterm.lua ~/.wezterm.lua

echo "🔧 bunのインストール"
curl -fsSL https://bun.sh/install | bash
