cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1697"
  sha256 arm:   "87e96c5ea75e3ff34934c150973978b8a477c6b20e9d177c9e97256f4e91217e",
         intel: "2364b666ea49038277745d2002a4daa7ab64377384490bfedc0f2851674c4a3e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
