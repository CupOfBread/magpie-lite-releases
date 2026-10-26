cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1651"
  sha256 arm:   "c30bf71b122c20bdc8a948d330bd24359bdb5d08cd8599c383b6cfdfb8e70247",
         intel: "8140895fa0597a3e3f385b01fc01168aa55e1246744d629dc5f616f13456c595"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
