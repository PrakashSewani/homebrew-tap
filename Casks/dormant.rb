cask "dormant" do
  version "0.1.0"
  sha256 "e0c9051b714ad97591c484a436e86376e47c1bc8e8132cdc6f59f02174e1f580"

  url "https://github.com/PrakashSewani/dormant-macos/releases/download/v#{version}/Dormant-v#{version}.dmg"
  name "Dormant"
  desc "Put idle macOS project workspaces to sleep: clean, archive and restore them safely"
  homepage "https://dormant.prakashsewani.com"

  depends_on macos: ">= :tahoe"

  app "Dormant.app"

  caveats <<~EOS
    Dormant is ad-hoc signed (no Apple Developer Program — docs/decisions.md D-001/D-010).
    On first launch macOS blocks it: open System Settings → Privacy & Security, click
    "Open Anyway", then launch Dormant again.
    Then enable the Finder extension in System Settings → Extensions (Finder Extensions)
    and relaunch Finder for the "Dormant ▸" context menu.
  EOS

  zap trash: "~/Library/Preferences/com.dormant.Dormant.plist"
end
