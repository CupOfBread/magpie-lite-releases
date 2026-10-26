cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1571"
  sha256 arm:   "bedcb2178a443c4ad49f4ca01adf8369e4c769ef5d145997ff46ff5e438458fa",
         intel: "4ab6b1c128ba35c0792e7b831f7f15df925acfdceda534cce2256ae27e56a5eb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
