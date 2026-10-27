class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1697/magpie-cli-darwin-arm64"
      sha256 "6226fce6211cfb281f72046d99749c1c821bed39ae3d42ece69b47c88cc53dd2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1697/magpie-cli-darwin-amd64"
      sha256 "de5c2a5828f2da07e62588716c1b2d798a39424b5ae4d09b292e70ef52b00e30"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1697/magpie-cli-linux-arm64"
      sha256 "1cf5b1027f4116932d3cdc9d3588a73f181c2476128077d82c545c7e2b7c26f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1697/magpie-cli-linux-amd64"
      sha256 "940205dbed7224c4cbf2afe9d2148bde4affa3fa2dfb3cd0ba5f9ee978d27bdf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
