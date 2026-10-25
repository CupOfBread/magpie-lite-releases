cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1551"
  sha256 arm:   "688bf18e57cb9701ad6fd6a4ceb84571309da0334688a23606a997958e2bc70a",
         intel: "de765cf0a43c23e8cd530f0173d027f7f7ab34c2963eab9b6268c0e65b7e02f2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
