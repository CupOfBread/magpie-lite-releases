cask "magpie-app" do
  arch arm: "arm64"

  version "0.1.1825-lam"
  sha256 arm: "42d8e3b191e32ded2d599833b240b3ac8d9d25bd1514e433f3a309a57459f004"

  url "https://github.com/CupOfBread/magpie-lite-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos
  depends_on arch: :arm64

  app "magpie.app"
end
