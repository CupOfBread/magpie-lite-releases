class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1760/magpie-cli-darwin-arm64"
      sha256 "7c9cc02e676c7c932a10286f20d4774b2216bf13fe684a744a0d65012b707837"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1760/magpie-cli-darwin-amd64"
      sha256 "979e28178b182b4946beb3ca1f0d3182a01bfb78aa67372543f6d651eb98972c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1760/magpie-cli-linux-arm64"
      sha256 "d6b9c2f3bc937c2db411eb7740653de07b744e50591280f63c2f188658f35b3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1760/magpie-cli-linux-amd64"
      sha256 "fe8870109ebfb0fcf3188afee921fd74a6dffafd840f8920c2c19b86c111a6a6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
