# Artim-Nayas Homebrew Tap

Homebrew tap for [**Git Menu**](https://github.com/Artim-Nayas/git-menu) — a macOS
menu-bar app for your GitHub work (PRs, reviews, inbox, Actions), powered by the
`gh` CLI.

## Install

```bash
brew install --cask artim-nayas/tap/git-menu
```

That's it — the cask clears the download quarantine for you, so Git Menu opens on
first launch without the Gatekeeper dance.

## Update

```bash
brew upgrade --cask git-menu
```

(Git Menu can also update itself from **Settings → Check for updates**.)

## Uninstall

```bash
brew uninstall --cask git-menu        # remove the app
brew uninstall --zap --cask git-menu  # remove the app + its settings/logs
```
