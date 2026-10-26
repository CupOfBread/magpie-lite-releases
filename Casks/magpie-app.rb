cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1568"
  sha256 arm:   "57720656771f08e70425e2c9c095778efbcd134570c9873e475b8fb15426a7a8",
         intel: "73b2d088c09d9d03a7e33059cdb25b58bb4a647da881b3e4f750e0f46da2cb3b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
