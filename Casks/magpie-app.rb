cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1488"
  sha256 arm:   "4664ff30c79ece2fd1341a477d880de72886387d5f25cf5f3147fb4e28638f33",
         intel: "bfa1f1da3ae8c5d61bdfe259e52bb3c8cb2ee5aa173acf518822b1a068eb6695"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
