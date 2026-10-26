cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1564"
  sha256 arm:   "8ffab6de85447292bac960e2eec566a36dc4cd3b4cfdabe069a14d844c6ba066",
         intel: "200589c298dadd4cbb99f25c23a8520718ec3ff82dbc7a896c798e294f376f42"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
