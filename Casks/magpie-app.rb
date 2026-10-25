cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1474"
  sha256 arm:   "40a0a1fe6bee4b577d9a6bd920c37ae9d1145c1ab93af9858b59869b682c7a13",
         intel: "707f7f27d1fd1c81f2eff887a5eafdd4cd26afeabb64a35921250b2e19224d8c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
