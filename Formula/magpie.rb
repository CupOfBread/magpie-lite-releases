class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1335/magpie-cli-darwin-arm64"
      sha256 "d1085321ea7b8cb807e1c8020704586fc8ea9c6132f2834a91b8d7303e306430"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1335/magpie-cli-darwin-amd64"
      sha256 "2af836c72b601a482afa268a511006f816fe03fcdab61196b7214e2a18941a42"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1335/magpie-cli-linux-arm64"
      sha256 "9581a9aa3fe239603d2cef4850bdc80e673cdef520be25782b8746e964d222f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1335/magpie-cli-linux-amd64"
      sha256 "1531b98840530c8c4e2046d16b56cd1165263fa37f3fc1b02591c9b3313f5b5c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
