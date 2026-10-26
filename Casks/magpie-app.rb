cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1649"
  sha256 arm:   "5a05ea9b9a45bfd13bc95002cd124ed89964d7b86feb222e280ed76dd5e99de4",
         intel: "da3475767479e6db51cd556d8224e4016385eab39b56e2af67b9a215d81d6677"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
