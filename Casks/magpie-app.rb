cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1595"
  sha256 arm:   "dfc59f807163b6475c2797d2d03e74d4bc7e34f1b38068655bda74c44d3b737f",
         intel: "6088872c5ff17e2700afc68e0bb64c90b96641cfbf522d77412b192f76fb005a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
