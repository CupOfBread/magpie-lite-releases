cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1291"
  sha256 arm:   "6460bda6cb07c1abe57f61e4f8c3b12c2589a7de9c105ac5c57a0dd171962530",
         intel: "ff398a1540715eedc539ff82576d99c61c3763f9a9cc79eb803b22bcddda1eec"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
