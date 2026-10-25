cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1491"
  sha256 arm:   "691a17815a4ecd808ad0978748ba42a9c8e630adfe4aba8d0a1641b93fa395e3",
         intel: "f4d208f7eb50e9ac6b37ff74dd547c76c471be2d10a74654a013db3fbdefe655"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
