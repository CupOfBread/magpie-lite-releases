cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1348"
  sha256 arm:   "891cca51271f1fee65255e38a89b9d9818b0b2043cdfe9d31b25dc61d3fd8cca",
         intel: "acdb3b3340f5ab4e38384a2343504e030429857b8f414848fa57a7eb3115e009"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
