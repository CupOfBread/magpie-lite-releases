class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1554/magpie-cli-darwin-arm64"
      sha256 "81168990a52dc4f45a9d3ad3d13915bd0172e25e53f2e27821b1a297831434f0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1554/magpie-cli-darwin-amd64"
      sha256 "f46c8bce2e366f30b8b8302709a0325bc6a457999e688cc7f17139458aa7fd62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1554/magpie-cli-linux-arm64"
      sha256 "84b4ef273e5298cfb9a722f4b7dd9b4f8efa9f9ae37901946d880d7c65c96ec0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1554/magpie-cli-linux-amd64"
      sha256 "3e78cc03a92f225bd5f9659c3bf4ba2e36c712bd5b3c3ec66d4544e1d95c0282"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
