class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1566/magpie-cli-darwin-arm64"
      sha256 "27a312fcc79d3fda8f6ffdd3cba3bf6d4b296d52a7d681e150d3b689678e770b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1566/magpie-cli-darwin-amd64"
      sha256 "6b0bb33ca1bd43018a253faac960783978c9e3b98aec3067a3c8ef966531003b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1566/magpie-cli-linux-arm64"
      sha256 "436791af733242d904bab7460536504a08f332bcf261d3b1a99762bcbbdebb5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1566/magpie-cli-linux-amd64"
      sha256 "5bb3fe47cd23446db1618847f7980c45ebbe08e186b38e6a0eb84513878f9b30"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
