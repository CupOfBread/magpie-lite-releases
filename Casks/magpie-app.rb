cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1394"
  sha256 arm:   "39b580db0e7f46b8f13f7d98bdf49eade8e9629b0d5a31eb9b783d60602adf03",
         intel: "091260efa94d021f891c6e584f3b36a4a0fcc3e2068a1e617b6b9d847372f77c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
