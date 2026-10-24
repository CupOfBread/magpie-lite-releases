cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1414"
  sha256 arm:   "173ec8d1b9abd95187e42ecdd06c26b0a1b8e1bab4b2799caa15ead504a6a9bf",
         intel: "7bf32b058573d68d1105e0808df0a9165e37ca7becb46ab488db4f8d77f45a2f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
