cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1756"
  sha256 arm:   "1a88cd2af634906ffd1d5f3102b1ee2616ef024fa143a38f6b120a7b24f03ee0",
         intel: "ae259d6f07035d5b7549a501bf8919e9c51040e6978e09cebee48214d376cb9e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
