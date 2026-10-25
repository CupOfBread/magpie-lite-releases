cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1507"
  sha256 arm:   "3dc5a506dfe7029b4402e94d9271db094ca71bb82f0aca8b11a861fa533a09d7",
         intel: "217f2a6602513e2e498a45f07e22920bfdf4654c3dc92b4b038f20c2659bd2b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
