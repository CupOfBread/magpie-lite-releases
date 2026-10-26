cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1624"
  sha256 arm:   "243970ff2f8a6e2d034bec217fc1508ba4f602f3cee317d683c02dce3f4c1726",
         intel: "38624d57ad72995b7da1abd86812f57a63453a54f69180a84fd075c931096d98"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
