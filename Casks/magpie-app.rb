cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1485"
  sha256 arm:   "8045e60b2b9ecbefdaf2d3303affc4fbbafee350be75d5f7019547e09acef54e",
         intel: "36528b040b523c778f1fea1b9198c285efeb399f8f26f02d3a014c33361e382d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
