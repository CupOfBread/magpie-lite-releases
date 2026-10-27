cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1701"
  sha256 arm:   "5f3adf0cf251f590f304c2bfffbf04249f09350f824e888a491996972bf4b337",
         intel: "65e4d9fabb5261a1a4482acb8512e1b16c2975175eacefb18a1625f608c73171"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
