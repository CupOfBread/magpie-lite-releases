cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1547"
  sha256 arm:   "ddfa2e8cda0e933df3b83d84afa8b4d525a67ddf12fb65ec1d47ee2133bc0174",
         intel: "b1281004e8bb80a84d8cb3da42c05e2b7d646a9a2f9e3f5281b5b95f97596405"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
