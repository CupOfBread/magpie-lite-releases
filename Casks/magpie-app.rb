cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1472"
  sha256 arm:   "2506c238c325849b535fff4096f7e32706b1419caaf0ec7a6136f05e890277d4",
         intel: "8f82c473c3efd29e46ef8816f55b5a21003cd715c5c19d834a3248fdb62ce555"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
