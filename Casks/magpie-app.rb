cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1670"
  sha256 arm:   "b780ba4b6403df01b902f0176e35219e96a5073679da864a7312813439f4ab02",
         intel: "aa8418022017097d9580d6f09da496bead426cc3a833c445813ff5cbc1ff989f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
