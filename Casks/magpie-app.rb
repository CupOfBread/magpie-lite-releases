cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1566"
  sha256 arm:   "793283523e92b584faa3a0500ec857b9d1ed5ae7ccf3c0de89b3e27eb10fe962",
         intel: "68eff0eaa7d0f1a244087165130dbdaf640781d60851aaf7a4e9fecec431e2fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
