cask "git-menu" do
  version "0.4.0"
  sha256 "acc96d16938fd7b08ee82e3d09c26816066edfea1ef2c19966ab281700a09318"

  url "https://github.com/Artim-Nayas/git-menu/releases/download/v#{version}/Git-Menu-#{version}-arm64.dmg",
      verified: "github.com/Artim-Nayas/git-menu/"
  name "Git Menu"
  desc "Menu-bar app for GitHub PRs, reviews, inbox and Actions, powered by the gh CLI"
  homepage "https://github.com/Artim-Nayas/git-menu"

  depends_on macos: :big_sur
  depends_on arch: :arm64

  app "Git Menu.app"

  # The app is ad-hoc signed but not notarized (free, no Apple Developer account),
  # so clear the download quarantine on install to let it launch normally.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Git Menu.app"]
  end

  zap trash: [
    "~/Library/Application Support/Git Menu",
    "~/Library/Logs/Git Menu",
    "~/Library/Preferences/com.artimnayas.gitmenu.plist",
    "~/Library/Saved Application State/com.artimnayas.gitmenu.savedState",
  ]
end
