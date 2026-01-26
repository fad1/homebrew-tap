cask "switcher" do
  version "1.0.6"
  sha256 "5449490aef565c2ccb1fdf11b70b43789c1e0d6abc86f70ff7aef2fdf09baad7"

  url "https://github.com/fad1/Switcher/releases/download/v#{version}/Switcher.zip"
  name "Switcher"
  desc "Fast, lightweight Cmd+Tab replacement for macOS"
  homepage "https://github.com/fad1/Switcher"

  app "Switcher.app"

  zap trash: [
    "~/Library/Preferences/com.simpleswitcher.app.plist",
  ]
end
