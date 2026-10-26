cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1594"
  sha256 arm:   "5e3ac9c2f6b87eaeb7963ffa573d2712342c78d3a4d116c6eef231466e5cd354",
         intel: "f358c1e4e048973c5cb21909b94286ec52888d995bddcf17f4e05d68f4fc8c15"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
