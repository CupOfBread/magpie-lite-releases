cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1644"
  sha256 arm:   "0c1321686dab18d672a0f509b00ed42bf18136bc3df685a0c54955a15e73d677",
         intel: "a6aa84fe65b302195e9ab135f7632b32d34b073a299caef69ce13ee617e9aa3a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
