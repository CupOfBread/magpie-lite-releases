class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1540/magpie-cli-darwin-arm64"
      sha256 "9b32ae979395b567a8891d3b0c7aa630c51846e9679cebee3c02a73c24fb0395"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1540/magpie-cli-darwin-amd64"
      sha256 "ec7d15a20d1499c3b9782cb595e04f91a3547837ed39aa5cff4a956ec4fd15ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1540/magpie-cli-linux-arm64"
      sha256 "1fad54d88b164ed0677715c1a8c33aa2b335b11d619a2e16581b53c52596a861"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1540/magpie-cli-linux-amd64"
      sha256 "8e495ba7af713081bb2a5195697fba161cec8aeb740dbd1c646677763321b998"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
