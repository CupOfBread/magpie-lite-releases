cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1517"
  sha256 arm:   "a14ba9113c61888219d22ea9d7be414aae94e11c5cc8e1ebf519fe21de42df23",
         intel: "1b086ef54679c3581e35960ff80f7bbe3d85a7dbe4bb07a95853e61ae4cc687e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
