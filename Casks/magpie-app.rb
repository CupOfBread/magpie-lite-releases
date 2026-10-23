cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1357"
  sha256 arm:   "be5bc06b02b8e5ca6fea7205e70b9466011f3172400dbc99f58ace8b9912df67",
         intel: "8eed2cd28e4c4dc6c607cfab8c6e0545cafec05027a4fc8cc602c2dc995d757a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
