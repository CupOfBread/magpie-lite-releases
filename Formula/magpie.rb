class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1703/magpie-cli-darwin-arm64"
      sha256 "c7109d53d9d4a4679f0cdf22cf0caaaff2d6e583f30c717a39ff50b54e5ba945"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1703/magpie-cli-darwin-amd64"
      sha256 "1995350cdcf9c7b332ccbe69e551e29f2d3a7cddcb4801ac56d2163553310ee8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1703/magpie-cli-linux-arm64"
      sha256 "fa4e61de2f1cb750740df6ee5a1ad97de90eb318552c470e893f29876e992f66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1703/magpie-cli-linux-amd64"
      sha256 "26413f86100020a7184fa158b1fb15647c8bd4f3f12f3f6e284f67cc52a342be"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
