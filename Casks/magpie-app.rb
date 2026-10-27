cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1696"
  sha256 arm:   "21eb8ae4fb1fba9d68857d2bcc578711ba0018e4d091985e5ad7f58da61bbaba",
         intel: "796149261567cf049e2159593779bb484c7ced651d9e290cf3e304ea8134448c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
