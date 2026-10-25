cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1483"
  sha256 arm:   "b2bb09bfd0e7bc1bba3d31a6b45ed44906c35da0ff611429b1c68ec59c75128e",
         intel: "31e3394e4340fde1394af9740922c1badb23ad620bff091e4810d17a2fe3784e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
