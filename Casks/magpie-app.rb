cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1549"
  sha256 arm:   "2719715e226f77896f7385da2ab4c48b0012411ba2e41afde0b19740114ae3ef",
         intel: "f6a2edeabe0ba272d7644ca2bd5978d97bf56f6a33e9661735858339dd7197be"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
