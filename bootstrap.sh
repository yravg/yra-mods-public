#!/usr/bin/env bash
# Register yra-mods-public, then ask for each third-party mod; "y" adds its original marketplace and installs it.
# Ben AI's token-saving mods are not installed here: no public git repository owned by Ben AI was found.
# Needs the `claude` CLI. Answer Enter/n to skip. Re-run safe.
set -e
here="$(cd "$(dirname "$0")" && pwd)"
claude plugin marketplace add "$here"
# plugin | marketplace name | source repo
while IFS='|' read -r plugin mkt repo; do
  read -r -p "Install third-party mod '$plugin' from $repo? [y/N] " a </dev/tty
  if [[ "$a" =~ ^[Yy] ]]; then
    claude plugin marketplace add "$repo"
    claude plugin install "$plugin@$mkt"
  fi
done <<'L'
cache-tax|claude-code-mods|karanb192/claude-code-mods
reflect-mod|claude-reflect-marketplace|bayramannakov/claude-reflect
filetree|claude-code-filetree|data-goblin/claude-code-filetree
savvy-progress|claude-kit|johnnyvizz/claude-kit
L
