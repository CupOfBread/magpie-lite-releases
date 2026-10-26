cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1570"
  sha256 arm:   "fcd090dba81215d217f77afd5ff20619cf60c5c22c4e735cb6b3f80c79195f9b",
         intel: "194c9f919af29e36e75e8d57135cad642a5e74af7fc6f8c08c660f441c52a97e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
