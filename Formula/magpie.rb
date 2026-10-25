class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1510/magpie-cli-darwin-arm64"
      sha256 "08f86a9e204a4e4656309727ae9557d25e5b7358ddd4a79c8f206015af722a45"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1510/magpie-cli-darwin-amd64"
      sha256 "f9406ec3047f1f8995c535ee73ae577e383bda9b1b43cbcdd0897f80b4d4c7de"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1510/magpie-cli-linux-arm64"
      sha256 "ee631cd5bfe619f4ddc721d4c842cb6bbc5b5642f0a52a76dcc342fa8f9d6f11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1510/magpie-cli-linux-amd64"
      sha256 "b951a6c42832896c416e4c4830f418ae52007c380a75151d6e0c30101cea2d69"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
