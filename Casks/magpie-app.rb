cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1569"
  sha256 arm:   "c8bbf2acf59dd1e0436d4467ded149171df94c2cc9359940c1d06b17ffbf9f58",
         intel: "3d870b2d88cf7b76b0d4f591f46ef78754b4d31ffdce791f905e283e95fdef7e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
