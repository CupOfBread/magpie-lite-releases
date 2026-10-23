cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1354"
  sha256 arm:   "c861116cee793fb16374ba11cbf83776902d0b96229bd68bc97e2953d0301eec",
         intel: "6991777d9bfcce274f34e97b54c41ab3b18b86e6d1edb11ff92b6a6757038362"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
