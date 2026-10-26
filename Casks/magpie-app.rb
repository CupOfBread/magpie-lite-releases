cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1648"
  sha256 arm:   "fb56bd5d78d188443826eed74ca5a98476da8e533fe89fde1513a7c0dcd2442a",
         intel: "e999c5bfbb134154b14a8bafff9fecf00fa4d82f61f9387412757c2491a9ad41"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
