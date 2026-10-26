cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1593"
  sha256 arm:   "e07bf75283a07f553e0ad77494d04d465ec8a87611bad65be7bfa7ea85a79bab",
         intel: "1420850647622af716ceb95347488acddd4ca57109023fee1c51349cbcc38587"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
