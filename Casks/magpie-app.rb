cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1816"
  sha256 arm:   "abc300fff0f7d57434709cef4b53fe04e674cc678c763bc37c83b14a47f62765",
         intel: "38b0da044a0c69da3ca3ec4e6e026ef88829220e569654ada69a320c2b3513a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
