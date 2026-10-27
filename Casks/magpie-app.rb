cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1657"
  sha256 arm:   "6e2e2c36da94b856c0a381ef0a7c8d4df6998bd6c05c6b18d824b7cdba852d68",
         intel: "879c948cb55b4ae28f57a3d4ca9845dcbf5f4770c3c39e42e9db9dc6c16c4879"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
