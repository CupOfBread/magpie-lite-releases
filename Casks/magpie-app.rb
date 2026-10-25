cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1512"
  sha256 arm:   "084c45587f055408a0c8189890b2ec7a11dccb054770139e244c2c1e4b5ce8d8",
         intel: "ff0edfe431495c7aff90e533772d53957044a606c16a53e6d2124042eecab9d6"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
