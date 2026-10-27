class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1667/magpie-cli-darwin-arm64"
      sha256 "c2c6b74622b8dba66ed695193a7bad8c9c7db08c8a674da8132161044bc79d5b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1667/magpie-cli-darwin-amd64"
      sha256 "faed6921324066adca458364566eeb2b457991199647b4a657554b220240515a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1667/magpie-cli-linux-arm64"
      sha256 "4cb3b49cfd53e876bb9972e9e0f1a3e937c09dc9516d3a90f08657045135d4fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1667/magpie-cli-linux-amd64"
      sha256 "ef782f28fa79ca0a0be5f434cf34a38a2a6dce46d12daed424c09d961d02e478"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
