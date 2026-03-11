cask "makediff" do
  version "1.4.5"
  sha256 "9bc7da85bb3760c40af9c879bfbb2887c83c05ac6ab29b9879921a426490d8fe"

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
