cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1391"
  sha256 arm:   "0f8d0b0b388e4010200a0f889e710b076846faa9c54cc60d4739a8330f14a866",
         intel: "892c145a79ba332961e0b8f645b508fcf3219623b03473dc6559e2341bf8c295"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
