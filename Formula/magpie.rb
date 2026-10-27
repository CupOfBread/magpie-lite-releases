class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1740/magpie-cli-darwin-arm64"
      sha256 "02cdf47577d68c72a5f149db8b6b1963f207c95020c8a451559b0f56af95729f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1740/magpie-cli-darwin-amd64"
      sha256 "58939589a79c2a7c7dbb3056381ca4b611dabd77dcfcf471151ba48b1fd663b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1740/magpie-cli-linux-arm64"
      sha256 "f0413a2b8c176edd5255beb986e05647215b3555b912f019d7e496e4dc973c9b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1740/magpie-cli-linux-amd64"
      sha256 "acc01d398d200a2bfbdd8e319fafa492f62f3b2114eca6b085b4a2fa12dda0ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
