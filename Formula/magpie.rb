class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1519/magpie-cli-darwin-arm64"
      sha256 "e929d7b2f52e1709e1e9012094ea770892c2a7b286e10929a4118df851359a29"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1519/magpie-cli-darwin-amd64"
      sha256 "2a30c4aed622b1439a33f024ef985118f30f199424f0a2f1e5f268a8ea18cedf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1519/magpie-cli-linux-arm64"
      sha256 "e69bdd78605f1dfff18a01772d795d4b10f65905f7de2deca1b51981665552c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1519/magpie-cli-linux-amd64"
      sha256 "d5dc6b66c8f65cb3ad7f986fdca6d5bf99b29cee03d7fad9a396d34cfd09f962"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
