class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1462/magpie-cli-darwin-arm64"
      sha256 "555843f74804f52a6f7c42dd814ac19f7429225f5afa7b26891a0fb762856661"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1462/magpie-cli-darwin-amd64"
      sha256 "9c271b282bf3914e662c07dcc50dd3893f4da522db3fa87695293c53128c58f0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1462/magpie-cli-linux-arm64"
      sha256 "fc98efaf58faadaaf28244669ef8a2056c9c499c4ed6bb276e418ed7c6e01db1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1462/magpie-cli-linux-amd64"
      sha256 "364ef6461e650bed7ccac4b12bd17d2f638442e7d5f989a65b550570bbb9bd48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
