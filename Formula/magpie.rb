class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1600/magpie-cli-darwin-arm64"
      sha256 "25b530b564d1adc0840211f629f97f74f0930729eea95c65f7bb51c24fd724da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1600/magpie-cli-darwin-amd64"
      sha256 "69a0d7fbabbfbc2fda221ee2f740a0466080e663d22b3288337c1fabb983afa7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1600/magpie-cli-linux-arm64"
      sha256 "0a55544694542c5a9edf2c563c0e7cf9aef578ecc1d03a37aa8746a6d033b7f8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1600/magpie-cli-linux-amd64"
      sha256 "083da6f3fc8bcbd5dcc1351dec1559d450c8032743f2d6293a5ce4ef8ef7a0ee"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
