cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1778"
  sha256 arm:   "5492752c11e3c4f7ffe5ffee2ed42ce92ede6ad1e06b79ce047abf562df4e5b0",
         intel: "b751aa27081aa0bc35e31ab42937fa5936c732c2421f97ef1093595edf4317f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
