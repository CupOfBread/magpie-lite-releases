cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1608"
  sha256 arm:   "80e8efde4bf8b081056f508e9e51aca9e3d718b4188143f44ac53b31cd03665b",
         intel: "92fd8d06f3f92ba907852a106f469acaafd14e44cbdfd6154966bdace576ba92"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
