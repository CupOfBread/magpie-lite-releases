cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1296"
  sha256 arm:   "ebea126a9f984e37949e7769facddc7e5f0cdb3ff7e77a60220b289a3b59f77b",
         intel: "98353f976c253d468d33d613c1790dede22e50f74391d381e0e327b773fb5336"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
