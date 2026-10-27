cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1674"
  sha256 arm:   "967b3ac26e24c80b838896b195895f727501358bbbf0bc8aafd2625147544cf6",
         intel: "b52733e2ce56f574630120029a9f875d8a15618551dbe60c7f282e58e2aeedad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
