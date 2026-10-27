cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1764"
  sha256 arm:   "c77519bacddb61257a00366fa11c002ea6de5c69eba4c00d729a1550bb47c43b",
         intel: "65e1f201dc020a19f1e480a18dcffdd1ae28807988e4bfdeae3a3c30c19d540b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
