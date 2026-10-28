class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1799/magpie-cli-darwin-arm64"
      sha256 "febc71ea7585a06a354a0dce4c495bbe62439a229385ee99e86915ba2a7de96c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1799/magpie-cli-darwin-amd64"
      sha256 "2428991c89f36b57ceff343abfd594b267d01f014e2d8b6bde0d86ff83e22ac3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1799/magpie-cli-linux-arm64"
      sha256 "27ea2b52d9bd8664539d5ee7248786816b21369f6022355ca91ce066b7334bcb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1799/magpie-cli-linux-amd64"
      sha256 "bb6e2f86b04f62c184599f885c55a8dd81952f2118f184dee6e46cf71a06cefd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
