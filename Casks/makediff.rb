cask "makediff" do
  version "1.3.2"
  sha256 "824bc1da3f836cb3fe7f6c92a9041add7d856be2b9a9299543a0ed3c1939fdff"

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
