cask "makediff" do
  version "1.5.2"
  sha256 "4625642da5c928e34e9852764d8c9a194c2ea3e63cff4427b12f76be3dbe2bc6"

  url "https://github.com/minsu-kang/make-app-diff/releases/download/v#{version}/MakeDiff-#{version}-arm64.dmg"
  name "MakeDiff"
  desc "Desktop app for viewing diffs between Make.com app versions"
  homepage "https://github.com/minsu-kang/make-app-diff"

  depends_on arch: :arm64

  app "MakeDiff.app"

  zap trash: [
    "~/Library/Application Support/make-app-diff",
    "~/Library/Preferences/com.electron.make-app-diff.plist",
    "~/Library/Saved Application State/com.electron.make-app-diff.savedState"
  ]
end
