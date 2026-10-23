class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1344/magpie-cli-darwin-arm64"
      sha256 "6b265315d5dc55b65572ecf0d6fd54fc2250a76edf70d60d78fdd52b833dce61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1344/magpie-cli-darwin-amd64"
      sha256 "a10a7a9562c3612bd81d055904bff1ebbfac911d851634170a184268cc10c8df"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1344/magpie-cli-linux-arm64"
      sha256 "c5c3b48e5152b092c2e790077914bf956a3b719554c474e519c05a91909f9d32"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1344/magpie-cli-linux-amd64"
      sha256 "3d2ed3f3ec76dd3b2d2a4a0bfc7576056fec07cfb438b57a1b979677c6ed1e1b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
