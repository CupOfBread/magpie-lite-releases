cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1732"
  sha256 arm:   "fbebd529f4b4135f0c9de1612537dc4ba34b206a4a1832dd47400975b65b306b",
         intel: "9dd64f7629ea73de793635955e9134a1df90fa07ac1cf02be0165c51742c349b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
