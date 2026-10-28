cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1808"
  sha256 arm:   "379818a111a9393b5ef5aba9dd89f1d037b27f87c31be3a2c992d2131d6f5633",
         intel: "fb78dbc6024561bc092c7546f21a7308782f3dbe004a80f2852aa19fbe040637"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
