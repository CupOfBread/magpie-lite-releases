cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1779"
  sha256 arm:   "cc8d4072d98a5bc2de2006b1b9ae3e695409a0c82fec31feed0b96a50b9cbdcf",
         intel: "817818a9d051ec05b3e05fdb860d7ff467493300a4da1d7136b5539c21ce39ba"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
