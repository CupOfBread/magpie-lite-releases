cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1528"
  sha256 arm:   "d216417b3e1e437278d6668e0e360e62f08a900dd9018d004629b065401d8c2c",
         intel: "243a294f67839bfc46c87c3c52e31e450a9dc2a10407ab67439f16b48a532d68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
