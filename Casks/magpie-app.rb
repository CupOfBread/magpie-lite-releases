cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1346"
  sha256 arm:   "d41b37dbf569938bc30dbc4d58f4d620950cdc6165ecc3b8d6fbc1eefe6978cc",
         intel: "504fcfceb49af81cebdb6210a81cde5c465ddcc6ca570eb3f8daf0ec5e581ed6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
