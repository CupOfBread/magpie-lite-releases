cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1516"
  sha256 arm:   "d6f0c042179f89fc0f5e68566f2ec0a900a3ca08933992a443a44c0e00ae4aaa",
         intel: "5b4561d9ac347a7f8886404be2e92bb7e8d283bb58244210c320a5c0dfacf993"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
