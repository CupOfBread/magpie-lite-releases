cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1795"
  sha256 arm:   "d577ebf967085157eec709cc66e05a4b0ed0726e6e188935a4642a58d21c4dee",
         intel: "90c8a3f3a22293b8edcb49296449be6648c92bbe770bd27abc6fdc4b55e3b1f9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
