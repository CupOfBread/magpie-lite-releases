cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1622"
  sha256 arm:   "3952ca680d03bedf95b16afd5f655904a722dd6823c99b63545bfe219a294acb",
         intel: "adaa4fbed514d06a28191598519354d1f22bc2dca7e5e5c55df8f2d7f9c2eac1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
