cask "dormant" do
  version "0.2.0"
  sha256 "f1caed11f9c577dd1c2609b5e563cad1d37ec6bb3c4de7b308d30d8ad1c072a7"

  url "https://github.com/PrakashSewani/dormant-macos/releases/download/v#{version}/Dormant-v#{version}.dmg"
  name "Dormant"
  desc "Put idle macOS project workspaces to sleep: clean, archive and restore them safely"
  homepage "https://dormant.prakashsewani.com"

  depends_on macos: :tahoe

  app "Dormant.app"

  caveats <<~EOS
    Dormant is ad-hoc signed (no Apple Developer Program — docs/decisions.md D-001/D-010).
    On first launch macOS blocks it: open System Settings → Privacy & Security, click
    "Open Anyway", then launch Dormant again.
    The Finder extension is enabled automatically on first launch; if it cannot be, Dormant
    offers a button that opens the right System Settings pane. Allow a moment (or restart
    Finder) for the "Dormant ▸" context menu to appear.
  EOS

  zap trash: "~/Library/Preferences/com.dormant.Dormant.plist"
end
