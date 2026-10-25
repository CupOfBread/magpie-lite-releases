class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1495/magpie-cli-darwin-arm64"
      sha256 "2e403a8e4a7cb278a4b2cc98e4c3d125af41329eda3c98973b3062f3d0d38499"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1495/magpie-cli-darwin-amd64"
      sha256 "f1da3af42a92aeb652fe43642c6bdbbd0cddad57a61e5055f25d6f334caa57ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1495/magpie-cli-linux-arm64"
      sha256 "64f2def572f86fc093b642604360832f9faf2f6fa1a34ab8676d0d15d5c6ee0a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1495/magpie-cli-linux-amd64"
      sha256 "b50d16d0549eedf3f8fe9ecf6e033c8481b80ba07cca66a7dbed2d3542728e84"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
