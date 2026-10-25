cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1511"
  sha256 arm:   "d92b79e05179edbd270d437e75ee023c02231083b3ea02dbd66f796aee57e5d3",
         intel: "ef109918b2b6abcd8950d18ec89b31c5a043b545e71cff48a38e49cf1c71f10b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
