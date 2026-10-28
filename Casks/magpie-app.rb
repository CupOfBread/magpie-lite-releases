cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1809"
  sha256 arm:   "bd74b773c71b0fbc9b5baaf92e31f0463f2ea11df6f10bf6ea1639cbac7ae925",
         intel: "2410f315275288eb69928e972ee13af864df0ca764da7caee24c9dc5a1b6e892"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
