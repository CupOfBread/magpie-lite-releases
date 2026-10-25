cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1506"
  sha256 arm:   "6e88cadd2d667c0b049f93d5388886210f4827f0bf4b495e735f3d0960564d94",
         intel: "023e04fea78bc04cec2949b8e7519db0afaa2f75791636ad7fbeaa114c0acf2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
