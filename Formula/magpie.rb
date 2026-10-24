class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1373/magpie-cli-darwin-arm64"
      sha256 "5a7068c1d41fbf82ac14f30b25c6420d2e8619fa3b60ce18c396114a748cbaec"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1373/magpie-cli-darwin-amd64"
      sha256 "afe2189046863c33fca706a21d8921b12d0517dc3af3f31407986ef2684796b5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1373/magpie-cli-linux-arm64"
      sha256 "2c773852efaf3cbb1263ba2ed143c06e686d49ee680a72e203723e6aa9294aab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1373/magpie-cli-linux-amd64"
      sha256 "c3fda1d5f5a1c088eecf01d40dacdc8d5407421752351022a3d97acc1d9e1e12"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
