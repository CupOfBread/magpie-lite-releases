cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1367"
  sha256 arm:   "26b4df051dac1d093204d75ca0aff627ed183bb467a5ed2896a725824255b1c4",
         intel: "626e1d3e3861122cf0abb0b623383551cec2f20bdd7060417d357ac25b915dc0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
