cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1342"
  sha256 arm:   "894ee476c2032f8cc582f1e6b5091c0421276de0a9dc6c5403e09435a784c495",
         intel: "a6ca49c17852a73131e1ef17561ebb4060fde7afb45839d150fd4cdffd3454f6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
