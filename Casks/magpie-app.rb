cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1478"
  sha256 arm:   "6632f965ca5681bc5b08d33325ee12584c076ce1c11578672c937f02ca287f1f",
         intel: "d63d54acaf64283129861e048c81f0f7ecd671e418e69ed4ace334e386996c11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
