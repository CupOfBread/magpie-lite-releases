class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1445/magpie-cli-darwin-arm64"
      sha256 "34a57a2b3cbb25e076613a69eba5373fdc415e57356c9cdf50dd3a6e9f6c3798"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1445/magpie-cli-darwin-amd64"
      sha256 "fe7fc58537254a63b05f304661b00c823de096864e31c9c7b46cc8912fb68c76"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1445/magpie-cli-linux-arm64"
      sha256 "87b71fe3c0196b7112e3ff9b141a5ba1b9492a0bb37e7034deee87336ef90d08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1445/magpie-cli-linux-amd64"
      sha256 "edeb39fb2d0da00f017161a0ace5a721bff110f085cb4af914b3e71a747d69ca"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
