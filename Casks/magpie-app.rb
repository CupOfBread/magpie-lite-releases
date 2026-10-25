cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1532"
  sha256 arm:   "056f680cd45288bd0bf69639beb30837db68761d1fd872326073753dfbf189ca",
         intel: "658e05ec5ffbd53979a207fe53058e227ff8536b49a21ddee82143c573808ca3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
