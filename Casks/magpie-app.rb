cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1331"
  sha256 arm:   "f465dfa744c5a3de8175e0013b2ad667043d31006a0ce5b710a91e15a306d254",
         intel: "f9fd8a17200acad1ee48328bc0be81fefbae03149892634e4d11c3cf24b5343e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
