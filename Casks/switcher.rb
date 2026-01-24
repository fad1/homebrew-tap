cask "switcher" do
  version "1.0.2"
  sha256 "9b6b21cc58c2683ce25139cafa8d212d0311f37f6d42e7cf9bbd668d019ae979"

  url "https://github.com/fad1/Switcher/releases/download/v#{version}/Switcher.zip"
  name "Switcher"
  desc "Fast, lightweight Cmd+Tab replacement for macOS"
  homepage "https://github.com/fad1/Switcher"

  app "Switcher.app"

  zap trash: [
    "~/Library/Preferences/com.simpleswitcher.app.plist",
  ]
end
