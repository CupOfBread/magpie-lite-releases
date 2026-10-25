cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1486"
  sha256 arm:   "becc131ebba124534a77bc21cb36a9702db0780ccb40ebcdfc558d911b4f51e2",
         intel: "ec199482ba76f1b0e538b5ae4e00597866074b0856d1d53e05bb661303259a02"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
