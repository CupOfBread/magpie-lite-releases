cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1740"
  sha256 arm:   "954ec5a65e6393be1b0d0f2eb55615679e99eced876f79d8dd11c9fe0bbb06d8",
         intel: "43809fbbeaf4acb6b70f07f79a2c6a9534c9d0bd812e94b121d795a9cb432ad1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
