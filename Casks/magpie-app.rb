cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1635"
  sha256 arm:   "c85c552d8c71fc3b4bab53841b61c6b570f5ce440b87c3caade944c71a19f275",
         intel: "94fa2a7c2c61f328425b41945ae6bab5a33ff4f48803a5897f7172343a3c5af4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
