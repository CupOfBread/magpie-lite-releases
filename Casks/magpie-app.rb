cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1596"
  sha256 arm:   "493f1793a773fe75c68da9b84e7bf0929eede892d704e73373319b803942aa1b",
         intel: "bca06275a3cc0d92dff344b8d9082fc3d753bdf89a2f9a6a14c107d535eb434c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
