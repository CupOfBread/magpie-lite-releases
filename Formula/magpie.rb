class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1313/magpie-cli-darwin-arm64"
      sha256 "ae59014a62f5f81ffb1f550c3276c07c53b1978bf24f87ce7c43ff18147b90ab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1313/magpie-cli-darwin-amd64"
      sha256 "2965ea28c4fd460438e6d505f9cbdad1452fb0254d6b9ba9e0fd538231194d8d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1313/magpie-cli-linux-arm64"
      sha256 "073770fba8dd9f861a52728dc6e8a7b71f7b6254472350dee8ed3043521382de"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1313/magpie-cli-linux-amd64"
      sha256 "76af8d44cac1b0241e4a6187fea36087b97bcf87751b979c0b9d2b41d7e6343f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
