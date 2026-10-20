class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1300/magpie-cli-darwin-arm64"
      sha256 "076597f29e102a4c73b18ca4006baa9966d256a58c17dc27bcd921e20aab336a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1300/magpie-cli-darwin-amd64"
      sha256 "a3873f5638a0d47452e05d30efa6c223680cf48c899e2c0a8c1bb1d1876cae33"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1300/magpie-cli-linux-arm64"
      sha256 "5b2774073fea1568790a7af87c04fdc4da2cf8984b0388576fa2486df30600a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1300/magpie-cli-linux-amd64"
      sha256 "ce10d53632f9ea8be9ed6987c6b16baf10854490d5ab27e4ea33bcb5b37eb418"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
