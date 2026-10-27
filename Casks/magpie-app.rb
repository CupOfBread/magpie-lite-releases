cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1658"
  sha256 arm:   "d33374a363d2a324afeebcba2a579faa2c48b125fef5ca395ce15c83a576607c",
         intel: "3999e6a322f85f56a217b91dd3c0282e0ef86d94fa650b56a10e4e32dc0593da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
