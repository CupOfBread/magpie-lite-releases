class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1408/magpie-cli-darwin-arm64"
      sha256 "5b71b3040bc75355e3ec8422d17296735de432f2d1c7b844a52566396a0c6607"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1408/magpie-cli-darwin-amd64"
      sha256 "224c18df2be5dac546e13beb43dcc2cc8c308f1a4f936ecb88e41284b9ce3dae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1408/magpie-cli-linux-arm64"
      sha256 "42e677d4384e3ae2f909042ada425b71f6a6475b6d344a767e17ff6a2b2fd5e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1408/magpie-cli-linux-amd64"
      sha256 "f0fc273cda0426cfceeab8aa37f8f17eea81373ca9387baf70723a513dcbb1bc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
