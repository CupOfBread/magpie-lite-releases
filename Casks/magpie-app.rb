cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1597"
  sha256 arm:   "d9b65d134f7f137d9ce31a19d0c7e53463e79f51caf780af250a6e0594aab4ac",
         intel: "5215c66a82e9aa0dd5368892c192b21b34546a50d22b9dbef6730d8b7ba6a5a3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
