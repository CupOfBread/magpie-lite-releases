cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1501"
  sha256 arm:   "0f6ba220781066fd7fa524298783c308ec34965143ce8bcc908cd838e8c02221",
         intel: "17f88125db8cb358a19e6215a991f8ae3ec40dee83cb73829f4b014360c9fb07"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
