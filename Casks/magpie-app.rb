cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1533"
  sha256 arm:   "1954c7d8960e33ccaef78142e023931d3eb131633e4fd7c940ae3349988c1591",
         intel: "27ba34f97ac3980404ece695e034463269b1e36eec6e0c406c67fd522f147d99"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
