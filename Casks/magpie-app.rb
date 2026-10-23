cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1351"
  sha256 arm:   "573199043d6b2b84669085cd9b96a844d632de91a4d5c769c7249960536eee3c",
         intel: "61736bd799224f0821ae6f0e0e643ee677b13f7318ce1f0af3656ac90fde0735"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
