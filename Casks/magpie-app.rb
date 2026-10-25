cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1556"
  sha256 arm:   "2049f94d7bee389ed8934f712cb447e6032361cbd8d92c6a3b9e2faa1f005ac4",
         intel: "d74ee341230cdef8b5b95d29567c6501700ff3465e8c759838037c407b51fcb4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
