cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1769"
  sha256 arm:   "3199a677710a35193afec4239cb4eba3a4c93595597a2effe85424212d6d8ee6",
         intel: "2f36bfbf22f0e89bc0dce5747fe9793134e82f665bc087021ac4ecedf34c976e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
