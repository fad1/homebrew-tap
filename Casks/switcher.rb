cask "switcher" do
  version "1.0.0"
  sha256 "9af96dd0a2d05ba47f5bdecee660e156b54b1a70ef0c302630f33f6ca8393b14"

  url "https://github.com/fad1/Switcher/releases/download/v#{version}/Switcher.zip"
  name "Switcher"
  desc "Fast, lightweight Cmd+Tab replacement for macOS"
  homepage "https://github.com/fad1/Switcher"

  app "Switcher.app"

  zap trash: [
    "~/Library/Preferences/com.simpleswitcher.app.plist",
  ]
end
