class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1781/magpie-cli-darwin-arm64"
      sha256 "a7314dbb2bac6302f7b2f3b330bf3b92077929b0c75f54dc169f09c199ae3965"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1781/magpie-cli-darwin-amd64"
      sha256 "02e6760f2b80e73d60dd7a6895030cb022a05c99639fcf795a2697bd308a995b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1781/magpie-cli-linux-arm64"
      sha256 "71903345baa8c67b9e72a9e94bf773dc69a953f68b1b68d408ead7e191aabbc1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1781/magpie-cli-linux-amd64"
      sha256 "2b369cda5c4bcd40120fdb6627372e7f225e196ca222cdf006b84300505f5779"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
