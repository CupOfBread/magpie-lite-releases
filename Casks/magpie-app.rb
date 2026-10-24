cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1458"
  sha256 arm:   "4759e371eb9ac83da2eafd411179feee739048b4cc86230af1475e0b65a60ec2",
         intel: "a9ec863297100f9729b8ee62738aa344b49837eab7b99151e0692e974ddf6454"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
