cask "switcher" do
  version "1.1.0"
  sha256 "916f5d871476a2eb1df0dbb41cac9a1a3b455641d87e24971fb2f92864426f64"

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
