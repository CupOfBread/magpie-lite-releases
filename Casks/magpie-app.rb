cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1396"
  sha256 arm:   "be254cb7d48df12c870619ebd60e8f2572d34ef83507644296f726bd4d758c24",
         intel: "a5fa805efbf6ce29fda01979f444fa9c102e89efaae9e3b62cf3954da73cd5dc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
