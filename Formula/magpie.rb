class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1785/magpie-cli-darwin-arm64"
      sha256 "7b0d8e1409bd2f1dda6882e392d0bfd58b0044551d630cfbe0eb329bf792d9c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1785/magpie-cli-darwin-amd64"
      sha256 "c7b407ba7867d1bbe33a0211dc2994312cf1a9f41120008338d0209c08aec532"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1785/magpie-cli-linux-arm64"
      sha256 "8d6e094f6f7718ca410e4d9426d184c7cf912322c38ede1aa8bae95ec92b63bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1785/magpie-cli-linux-amd64"
      sha256 "19cf2de7e1054f2f1d5b5b1ea9ca3c929fd8b16be99db94c40e9f73440e72673"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
