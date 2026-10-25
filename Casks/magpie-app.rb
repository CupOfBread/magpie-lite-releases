cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1536"
  sha256 arm:   "4dcdb8df477fc6ae84db57d8eddc814f07c376358c18a64ae89c80338a07c969",
         intel: "eeac0d2606588ba3620d8e71dae560f3436d76e144a1119be508853425f7ef6e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
