cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1349"
  sha256 arm:   "d6c15b27e892bbaae4c9da8982731d25744f5402dc02cb24eeb9811f2d5ada30",
         intel: "8dd9236c50ddb6a2b8f653702d413eadf4c5af6fe2284de1a1ffe8ee454e6a7a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
