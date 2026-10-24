cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1380"
  sha256 arm:   "33b2f07891a8016f80dc6111ee21d086c21d7e5cea60e32d534c7e3879f42853",
         intel: "683f3ac6cf8c28ef301bd07ba5872c0c311b54bf408bf0788a5351e569ecc721"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
