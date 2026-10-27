cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1721"
  sha256 arm:   "6607a9f46c5f3736355a052aff3938247ca578c185b20f1cead2252a6f67dd33",
         intel: "9831a18ea3beee924d3bc95346c1e1b9a61880ccbfb3f03d83c8e3f165076a97"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
