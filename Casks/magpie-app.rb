cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1389"
  sha256 arm:   "6cfa5618d37bef45600c876a4ad08f0f643f1a73a6383f4e961732257ade8cf1",
         intel: "900cc9d1bdb2518bba188549c96b9d850fc695f2b5b396996825224d1822bc51"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
