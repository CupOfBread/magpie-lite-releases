cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1420"
  sha256 arm:   "5bae4b493649587b656c963dc04c141de4eaf60a3c13329103e08ce757d9be73",
         intel: "8d93fcce8247527fa8b631da42d9b334811ae081c758a83d27353ff36f0e2ca5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
