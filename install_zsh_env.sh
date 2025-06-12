#!/bin/bash

set -e

echo "🔧 Homebrew パッケージのインストール"
brew install zsh zinit fzf zoxide bat eza fd ripgrep
brew install --cask wezterm

echo "💡 FZFセットアップ"
"$(brew --prefix)/opt/fzf/install" --key-bindings --completion --no-update-rc

echo "✅ zshrcをバックアップしてセットアップ"
cp ~/.zshrc ~/.zshrc.bak 2>/dev/null || true
cp ./zshrc ~/.zshrc

echo "🔧 bunのインストール"
curl -fsSL https://bun.sh/install | bash
