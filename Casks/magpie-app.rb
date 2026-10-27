cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1666"
  sha256 arm:   "f9eb89743f490b5993c08b0ed5b95e24238d1cda0d3a0e5a0fd4a09dc22e6380",
         intel: "612609718ff0fc412c91a843071ef2d458ca523bfa6ad14930c7bf6c2235e4a1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
