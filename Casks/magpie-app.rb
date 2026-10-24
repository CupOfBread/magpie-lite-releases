cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1405"
  sha256 arm:   "d32bb84632684462c68727f23ff02e7df7e2269920d2d70e24ae7ce97163b82a",
         intel: "84cd41b300f1d17f1c1737ae0574cc493badfddfffc516ea9ee7f1bffe09ea48"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
