cask "makediff" do
  version "1.3.1"
  sha256 "80d2bd919bc5e556ed9ff1c2c0fc7feaaa48cbffcf02b429eb19451127646e28"

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
