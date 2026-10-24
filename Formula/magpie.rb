class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1394/magpie-cli-darwin-arm64"
      sha256 "dd8506dc720d2bace790b8d17e494a27e1a45928043c5163422e5b04f495a0aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1394/magpie-cli-darwin-amd64"
      sha256 "1a8e1d51e89cbfca3d95668de0e1aec0d6f3658aab895dc79247885e6e63e206"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1394/magpie-cli-linux-arm64"
      sha256 "7c93dfd0d3dd84f2f2f69cdce8c5a539b18cbc5bb5b316608b750d4fd6ac1993"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1394/magpie-cli-linux-amd64"
      sha256 "74bfa61ec4229980351950b51125ab854426a564756d244cd76128e6850a700b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
