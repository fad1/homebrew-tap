cask "switcher" do
  version "1.0.3"
  sha256 "20f8137cd7ee60a858f9807f7992f0e40fc0a29dbce62de8794aefaca810698d"

  url "https://github.com/fad1/Switcher/releases/download/v#{version}/Switcher.zip"
  name "Switcher"
  desc "Fast, lightweight Cmd+Tab replacement for macOS"
  homepage "https://github.com/fad1/Switcher"

  app "Switcher.app"

  zap trash: [
    "~/Library/Preferences/com.simpleswitcher.app.plist",
  ]
end
