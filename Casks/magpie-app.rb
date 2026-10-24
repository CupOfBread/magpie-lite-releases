cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1436"
  sha256 arm:   "2345eaf67140f34778899cd55b56c43faafb7fed4e519f3bb54e1ae9cc830fc6",
         intel: "09fbc9243621a7766dae66d43accbe9a81d2fff8388a6648a0f1ff0deda62888"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
