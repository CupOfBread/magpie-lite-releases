cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1735"
  sha256 arm:   "c94db320dca9dcec6d3bd5aa1a6e37ceba0bab648eb21452c9cdd74eb3f9e3ba",
         intel: "6e11b7e5d602ac57aa74108de2cfeb12e583957ce2379559f59f5dacf8e043d9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
