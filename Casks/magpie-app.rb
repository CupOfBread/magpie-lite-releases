cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1818"
  sha256 arm:   "6ac30a1edb12d0c2fc4f5489ccaddd57e03c1f358136df5b5faf01d65e5d1057",
         intel: "7af01d732c79aa613bdb1441f4d39b07b3c522d168fb658fbf4752a1f897712b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
