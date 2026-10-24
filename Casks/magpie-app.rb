cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1369"
  sha256 arm:   "054133c355a7ebefe9a351e77e7d41781ee1052ed5f421fe307747f6d50d7884",
         intel: "8e234aa928c4ea1c9c986db3ff8d90c46aaa20cdd50c03cb94e83232cb2d372a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
