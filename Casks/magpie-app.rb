cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1432"
  sha256 arm:   "f4c2960c4fcf304e21880e4cccace473d21f6a68ac55eb48fe584deb358e885a",
         intel: "71570d1598ef3ee0b9a63d6f4d4b8d205188d82476f8ee6a5b34a3ebe3171402"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
