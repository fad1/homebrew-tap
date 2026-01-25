cask "switcher" do
  version "1.0.5"
  sha256 "dc5e722abffaf7b3fbd969cf825e9cd8ec6121597b07c0b0c6835dfd63416498"

  url "https://github.com/fad1/Switcher/releases/download/v#{version}/Switcher.zip"
  name "Switcher"
  desc "Fast, lightweight Cmd+Tab replacement for macOS"
  homepage "https://github.com/fad1/Switcher"

  app "Switcher.app"

  zap trash: [
    "~/Library/Preferences/com.simpleswitcher.app.plist",
  ]
end
