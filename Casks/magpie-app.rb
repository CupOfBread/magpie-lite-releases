cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1537"
  sha256 arm:   "6d403a0d90ab0ed5d8340de56ae968777b286684ee035be6cbfe1951cabf522f",
         intel: "56fa2bee3709b99b9fedb7c4b6eba2bfc2a047c5f82981c7611133c5b13a6923"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
