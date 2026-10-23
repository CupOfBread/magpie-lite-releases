class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1353/magpie-cli-darwin-arm64"
      sha256 "7129db6fd1d9e743ce5d24676f27cbaf3dee0d1ef293c7ec2210556425d52850"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1353/magpie-cli-darwin-amd64"
      sha256 "1d5126393b8f1edaeff9199993dea512acc1b77674a1ab32938dfa6cff80645c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1353/magpie-cli-linux-arm64"
      sha256 "b3919f59d6863728df7bc5f647796fae78fe4169adaab38f271fb9625ca3110c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1353/magpie-cli-linux-amd64"
      sha256 "3f5c7bfbc9824f31236aae7f42ba8aeceeba56aeff3af3e35e693a07c5b848c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
