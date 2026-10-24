class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1418/magpie-cli-darwin-arm64"
      sha256 "0542d9e264373e17cefa105b8be19fd9e7f20c36d4ab7ada26f36f0adadc0259"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1418/magpie-cli-darwin-amd64"
      sha256 "e4adc34f5995a3cfb8e9dfc8cc742da1fb3a8e44be73f4d73a2dff91f200f41b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1418/magpie-cli-linux-arm64"
      sha256 "9cad809a6ddbbbac9ef4e8e970bedd4f2a3b17bcc4bea905e61b4e519576e59d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1418/magpie-cli-linux-amd64"
      sha256 "8944beb30f56e080779f9d3a20ac5bd05e1cfaaa302900f590aacb1f62861677"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
