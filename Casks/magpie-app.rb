cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1300"
  sha256 arm:   "dd7079003b1c583674f7fe11284fe57f993289c9db57e60417de4e29c531dc56",
         intel: "03c57b8532b13af81d18daffc5eb9895898cbb1ea331eb8d7d6acc3b7e6c1691"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
