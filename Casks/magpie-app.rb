cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1495"
  sha256 arm:   "802f6e832ca7ee622fee004736d24bf81fd94b886b084adc5cb00f71280ec832",
         intel: "d757b308280ade022b956fa46772354351ec953b502eb9bfaf24829a1d79c985"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
