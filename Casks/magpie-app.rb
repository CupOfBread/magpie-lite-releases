cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1519"
  sha256 arm:   "bb4ed761cc52c8dcf8a42b5b525c0847ffc180600ce284d5e19e707d69823377",
         intel: "21411669f7663ada3e862e75db7900bcd400f7d6c8a6fe168ca850cb43b41634"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
