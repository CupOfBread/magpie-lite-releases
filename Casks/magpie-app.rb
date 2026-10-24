cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1445"
  sha256 arm:   "a9a923e6eb51e3628e3458e918af938946765537fa48d0f3aabfb714478c39f7",
         intel: "0e2ea56c26858ef7794c42923eeb488893a626811dcf54ec0052d21d2001ceb5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
