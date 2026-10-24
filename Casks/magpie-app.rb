cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1399"
  sha256 arm:   "0ea647e423549e82a6eb6ff995891a48a232134959e3e2b80c31d308cf5dc7d3",
         intel: "782f04dc82acd9ef1f3ab3a554878ff387f8ca27afd26d5109900b288fa8aee7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
