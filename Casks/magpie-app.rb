cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1337"
  sha256 arm:   "30b30d0f21f6115e888ca3c14e8f859ef6c40341ad968aec500e6fa1e27fecb1",
         intel: "a08e5f2b05cff7bf6a5dd4f276e1fdeefb332122f4efe866cb90558cf1e49cd0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
