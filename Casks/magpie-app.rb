cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1437"
  sha256 arm:   "efba13d1ff0472f0bb26fa91f0b9da20b477855783e5b72363e0d7ef407834f8",
         intel: "5273249f9564777edfe2720cee33e2f1ae922984cedae195f718cd5f83fab18b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
