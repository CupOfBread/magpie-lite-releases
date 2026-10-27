cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1723"
  sha256 arm:   "6b53f3a5d712d167ccdd4bbf999203b2200b1208a1fc723e4cc8882995ad2b56",
         intel: "9313f5dd77403ca8450101825fc50dfd8f724241b381be8729cc20bddb278e30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
