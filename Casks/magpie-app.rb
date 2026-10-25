cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1470"
  sha256 arm:   "129df30d5e994c2ec2031002944ea0d4ff99e664a29099d2b20fd582bf2d7e90",
         intel: "5d0901b460121598e7d69b66ae55662cb3639e8d2ab9eabc0efab86214ac1644"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
