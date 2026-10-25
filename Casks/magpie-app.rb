cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1499"
  sha256 arm:   "a160bf9b733cd745467489618c803c52d8b323a4c1087f8ec6c61485c4182695",
         intel: "4d119fd884e3f19514f59c8b1f86628760de468c188a8cf300eaf16ffd1c95ca"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
