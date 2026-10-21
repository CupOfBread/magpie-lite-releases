cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1314"
  sha256 arm:   "4c8a494dd3542400f95715d6882dd25295d68c32d9369e3a305f3ac91239a52a",
         intel: "105dac7fe09597a05d72e3e0edf3d249f32c63a8c76f665547e4125e47421cb7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
