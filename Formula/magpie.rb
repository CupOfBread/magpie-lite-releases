class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1479/magpie-cli-darwin-arm64"
      sha256 "abd0e77822cd01f8eca8583523f8b3f04ae1b1bea6bca134872cc30b1147b20b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1479/magpie-cli-darwin-amd64"
      sha256 "fee87f51701aaf74ef85be054e0ad3cc3f47559841d9f0c9cb211f187b3a1d12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1479/magpie-cli-linux-arm64"
      sha256 "793f38d3f2bf065a229e707821ac834e074d9b42ba75fd092a1dee2f24011d80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1479/magpie-cli-linux-amd64"
      sha256 "6ade07eedf6fe0e2f478031be14e107873294bdbe3370bd412b8c5e3dcba4000"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
