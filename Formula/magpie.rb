class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1731/magpie-cli-darwin-arm64"
      sha256 "7b4bfc83b19cdf86d2d80c8172c1bf6f6de579838fd6a376a4553c07acd4bfcd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1731/magpie-cli-darwin-amd64"
      sha256 "483c9a1476cda085468284bbc12127e440fa37a376f97fd24acef4072bf24d25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1731/magpie-cli-linux-arm64"
      sha256 "07e6dab141d50bfec9ac9d6771d9e248b6321be0c0a8a54d56425056e9d0a609"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1731/magpie-cli-linux-amd64"
      sha256 "7a9e01539de3b520154587abbb5aff4db7e6ca8ef5ef4fd4d0752c30b998d5cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
