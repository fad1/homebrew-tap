cask "switcher" do
  version "1.1.2"
  sha256 "d953f37064b3d9cdb1db6f7456f6fd1c548fc25cd5c9f8ec536c04d4c5c14b30"

  url "https://github.com/fad1/Switcher/releases/download/v#{version}/Switcher.zip"
  name "Switcher"
  desc "Fast, lightweight Cmd+Tab replacement"
  homepage "https://github.com/fad1/Switcher"

  depends_on :macos

  app "Switcher.app"

  # Switcher is ad-hoc signed (not notarized), so macOS quarantines it on
  # download. Strip the quarantine attribute on install so it launches without
  # the manual `xattr -dr com.apple.quarantine` step. See GitHub issue #1.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Switcher.app"]
  end

  zap trash: "~/Library/Preferences/com.simpleswitcher.app.plist"

  caveats <<~EOS
    Switcher needs Accessibility permission to work:
      System Settings → Privacy & Security → Accessibility → enable Switcher

    It is ad-hoc signed (not notarized). If macOS still blocks it, run:
      xattr -dr com.apple.quarantine #{appdir}/Switcher.app
  EOS
end
