cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1431"
  sha256 arm:   "9bf5fc57eb75e87d7e0ba84096ecc9328d6c6cd535634cce735ca7a2836483df",
         intel: "e0a8a2280a881ce29564741f7d8c5216133643882c6ef66e94d85d0336f0c122"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
