class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1602/magpie-cli-darwin-arm64"
      sha256 "562ad70e174e36dd23b2df1cd1d526a842687fa56fe94ee5787200758599403b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1602/magpie-cli-darwin-amd64"
      sha256 "d627f26044b1057951da4af985afeb61e82164b140cf9c23dc513787e3afa897"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1602/magpie-cli-linux-arm64"
      sha256 "dc6d1719a23ed9af588735280a91723b51f281f98fa4d3a4bf192e638f9a7716"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1602/magpie-cli-linux-amd64"
      sha256 "befc45d631b1822903d7e0d6723dedf0f421ba66f14289a73b43f3a709e333b0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
