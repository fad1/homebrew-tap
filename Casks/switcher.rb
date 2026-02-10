cask "switcher" do
  version "1.0.7"
  sha256 "3a750f657ca2d0d3151b2320abc4fc4d6d1e42c71ca2a99ba18276c99c4f9798"

  url "https://github.com/fad1/Switcher/releases/download/v#{version}/Switcher.zip"
  name "Switcher"
  desc "Fast, lightweight Cmd+Tab replacement for macOS"
  homepage "https://github.com/fad1/Switcher"

  app "Switcher.app"

  zap trash: [
    "~/Library/Preferences/com.simpleswitcher.app.plist",
  ]
end
