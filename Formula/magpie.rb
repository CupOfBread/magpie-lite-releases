class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1571/magpie-cli-darwin-arm64"
      sha256 "553e2d0a368b66812ce1ae3edcf03f4be3dd985ee1a58a74167ed09a1f187646"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1571/magpie-cli-darwin-amd64"
      sha256 "b0d8af057de33cf8c2fc8fc36c5c24a183fd04e165e8a0c251c1e7e71a3c9581"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1571/magpie-cli-linux-arm64"
      sha256 "d78045b0f4e90846c148b900433021a88d92201312ebd1cdb7e452f6b32f0b6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1571/magpie-cli-linux-amd64"
      sha256 "28c74c891aa09f205ba169996b69b877ca06e95c2a9c893bdfc8d4da6f909a16"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
