cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1611"
  sha256 arm:   "d39923a802ca4486c7cbe4ee6fb12d581800cd315587bb6ce28876a80dcae1a3",
         intel: "3a1f70ee36770c2d0d42c843bfeba1adce93120b8790976773aff9fe9170b310"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
