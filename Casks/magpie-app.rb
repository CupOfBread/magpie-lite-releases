cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1492"
  sha256 arm:   "6fde875006e0cb809be1c9c5bea8932a27c63250c78011fb0b5156b54f2242a4",
         intel: "ac8317aa7060c2d945badde79487a5bbb9f3d28714755f5fb9fedfcdfa90ba2c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
