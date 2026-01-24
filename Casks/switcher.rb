cask "switcher" do
  version "1.0.1"
  sha256 "5967159371e25b0c7d8570ea8f65c334147796e6aa3d0594c73b4b19e86f52ef"

  url "https://github.com/fad1/Switcher/releases/download/v#{version}/Switcher.zip"
  name "Switcher"
  desc "Fast, lightweight Cmd+Tab replacement for macOS"
  homepage "https://github.com/fad1/Switcher"

  app "Switcher.app"

  zap trash: [
    "~/Library/Preferences/com.simpleswitcher.app.plist",
  ]
end
