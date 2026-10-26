cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1579"
  sha256 arm:   "d1638fc76014f8de112e93d14f30be6036f511820b02584181a3669544291ce5",
         intel: "85b1e1c934cc793679189f68719d6a6439980007c7bc7e296e248f43e80a9c61"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
