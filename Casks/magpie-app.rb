cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1675"
  sha256 arm:   "ee3a0d536281fc26d6882accbb4d0e6e6e2bbbd05d2832873145a35ffc109ece",
         intel: "cc328410a36cf126d0cafcac491c234490644de1d0a4482ee2df2a10db7b76fd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
