cask "makediff" do
  version "1.4.2"
  sha256 "70b11fa5979c321264d4c252e73f736673f68a0d4a2f979bca92d88e2e82aad3"

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
