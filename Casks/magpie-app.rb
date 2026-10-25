cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1557"
  sha256 arm:   "565cbebf42669939a8215c7f802e579c42b6aadfaac46dfd04ba92f3323fe9b8",
         intel: "7987181a2b0318ff059c5609d3f3636d31398b9635b8ad4860b0b896dcc61760"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
