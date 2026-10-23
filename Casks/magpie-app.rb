cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1332"
  sha256 arm:   "4254bc20506f562903fc061c34e3a2bd150898b33c5f9f8963931a36fb446068",
         intel: "1823aa52155f6114f4a58ebddcbad8e92a84f9947cf4c3b5401d3c2604136bff"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
