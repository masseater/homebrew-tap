cask "no-mac-music" do
  version "0.2.0"
  sha256 "5efc375a352b404e4db18fc27fcd58363b1cc139f828cdaee8c219e680de38a3"

  url "https://github.com/masseater/no-mac-music/releases/download/v#{version}/NoMacMusic.app.zip"
  name "NoMacMusic"
  desc "Stop Music.app from launching on media keys and route them to your player"
  homepage "https://github.com/masseater/no-mac-music"

  depends_on macos: ">= :sonoma"

  app "NoMacMusic.app"

  zap trash: [
    "~/Library/Preferences/com.masseater.NoMacMusic.plist",
    "~/Library/Caches/com.masseater.NoMacMusic",
    "~/Library/Saved Application State/com.masseater.NoMacMusic.savedState",
  ]
end
