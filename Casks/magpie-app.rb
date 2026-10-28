cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1826"
  sha256 arm:   "efccc8b888d27a1f2371151e4dfbac6f6d49d3f499cd6e29cec516590457a874",
         intel: "f185893d6320244c465c7a143f766541c6d512dfdfac87cd743d0016c8d2a787"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
