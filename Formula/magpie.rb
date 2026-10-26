class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1582/magpie-cli-darwin-arm64"
      sha256 "e6f0321ca3b090d558378482dc93f3ad0e28f3c5b7ebefda60d108e301270e91"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1582/magpie-cli-darwin-amd64"
      sha256 "c2a278d6b44bbb289dd36ac35e7c2cdfed2e0c950de2a7c1b52c512fe04b7a59"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1582/magpie-cli-linux-arm64"
      sha256 "637197bbd62d13bc7108d7cf83d23f53dfc494943984f09de85188ee8dfa2ad5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1582/magpie-cli-linux-amd64"
      sha256 "016f8e7e5be99ed757aa242965e0e12a19d0478bf077297d2b57335aebb61412"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
