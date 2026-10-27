cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1667"
  sha256 arm:   "a30dbdbc47a7070f0d5f074979eec2a1879a0a072f641a33673e8a462707ecce",
         intel: "61d599afe6c67db30fb7ad027451f227609999aa970d8c39e3913d6aad00c345"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
