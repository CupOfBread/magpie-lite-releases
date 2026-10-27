cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1725"
  sha256 arm:   "6a4277f1ca2c4b0549125536c18e2274fc2489001c6c54b434cd77200288b6b1",
         intel: "f5985c5b293a523fa1cfebfcd79eff1e9528aa44ba3e1256a623cd73a1dc8e0c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
