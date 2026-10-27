cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1773"
  sha256 arm:   "0cad443fe82e952479d067997875dec16a5622d82c711962c2e94296551a8cae",
         intel: "fc268527f8145dbcf0f96a5917c8d4bbbac57ec115a20ef079f4c4812a471abb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
