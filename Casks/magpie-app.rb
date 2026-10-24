cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1466"
  sha256 arm:   "06fa030e20d5618e8ce07cfe5b31e133d8670a253a8eb6657cbcf8e98db798a0",
         intel: "57b3c7afef4a3488a35385439383d10f2906bf0afa4bd3db990ccc2356003013"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
