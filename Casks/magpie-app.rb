cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1325"
  sha256 arm:   "c3ef2b05c7597dfd87ffcff1291f4f0063ad485ffedf942c8301b6d2a5966967",
         intel: "5c9973aa0e59ba429130098fa40bd9d665b3a406779ed87a95162c3f7817dd86"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
