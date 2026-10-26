cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1633"
  sha256 arm:   "cb3f302b7f3fd901ce436cdd60e8fa72a6925c408fb80f29fea5a2161b3d3547",
         intel: "fd159e25d4a5cbd531721c03e6e5656c5a760069898c709ad3fdbac1995902c7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
