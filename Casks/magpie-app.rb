cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1318"
  sha256 arm:   "6c881c8dd40285d111fee26bf9359416fd07b05be494804f137f6dc744351ac9",
         intel: "66851a1cead850a9bc04dc00faa9e989aee4b980a0355e14de078faa7b070f66"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
