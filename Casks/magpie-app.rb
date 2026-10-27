cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1734"
  sha256 arm:   "40c8db0210df40e71e506409581bccf380667f846ee2ba3054044e683eff2308",
         intel: "ce5bb111de9226acfbc8ff818151e631caf87ab010807a36d525c975b782f920"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
