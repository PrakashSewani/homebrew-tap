# homebrew-tap

Homebrew tap for [Dormant](https://github.com/PrakashSewani/dormant-macos) — a macOS utility for
the lifecycle of project workspaces: clean, archive, and restore local projects without losing
your repositories.

```bash
brew tap PrakashSewani/tap
brew install --cask dormant
```

The cask installs `Dormant.app` from the signed-off GitHub release zip (checksum-pinned per
release). The first cask lands with the first Dormant release.

## First launch

Dormant is ad-hoc signed (deliberately no Apple Developer Program). On first launch macOS blocks
it once:

1. Open **System Settings → Privacy & Security**, click **"Open Anyway"**, then launch Dormant
   again.
2. Enable the Finder extension in **System Settings → Extensions (Finder Extensions)** and
   relaunch Finder for the "Dormant ▸" context menu.

## Uninstall

`brew uninstall --cask dormant` (even with `--zap`) never touches `~/.dormant` — that directory
holds your project registry and the archive store, which contain your source code. Remove it
yourself only if you want Dormant's data gone.

## Releases and updates

Each Dormant release bumps the cask (`version` + `sha256`) in this repo; `brew update && brew
upgrade --cask dormant` picks it up. The publishing procedure lives in the main repo's
[ship-release skill](https://github.com/PrakashSewani/dormant-macos/blob/dev/.commandcode/skills/ship-release/SKILL.md).
