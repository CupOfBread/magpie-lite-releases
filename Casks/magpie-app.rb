cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1695"
  sha256 arm:   "2f2e72b5369da46664a64aafd714e8230022273ade68fac31aba55c2039ad274",
         intel: "5b7f3f921d87c91eecc782a0fb035760fe38973cb1ced23d299e060411f1cc7b"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
