cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1362"
  sha256 arm:   "ece208f315916b12fdfd6e4a155f215fc3be3213fafe5732271719626d7eda11",
         intel: "e5e860fcad9602b102e8f427d91a4260b082249630324fab845db963908697c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
