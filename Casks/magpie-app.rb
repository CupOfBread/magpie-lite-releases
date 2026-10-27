cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1716"
  sha256 arm:   "73c2c23106fab8f7e3c6ecd3c686f7583d5744696aad6cd5b5cbfa65b85302c4",
         intel: "ea42d18891318fab5f8e9ceb1e1f564527f577e21374f1a8852d85407ccf59c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
