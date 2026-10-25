cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1490"
  sha256 arm:   "738a7ec0a21c6ae541007dbd8ffb0ef9b84a1c1e598827f72b6b9724fdd4196d",
         intel: "792df88195de5193fc3554f593bb2129a285069309690927b005d1b96f7aaf3f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
