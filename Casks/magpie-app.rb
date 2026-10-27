cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1714"
  sha256 arm:   "936021fc8d696e831b4cf3ac539aafd885945a0f1265d10f52ee871062746d27",
         intel: "28fc4b11ec2dd17aaa5929f8306ede8fb8e3462b4e88254edb502b109313e92b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
