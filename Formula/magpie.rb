class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1825/magpie-cli-darwin-arm64"
      sha256 "441c344b820cec05205abd37159c1841bc3e7182bca6120b0fc694acbcc95697"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1825/magpie-cli-darwin-amd64"
      sha256 "11e6a5971c566ceca7f2385f1c37e81f65e699b1e3d509e5e22f63f86edc40d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1825/magpie-cli-linux-arm64"
      sha256 "754dcf3d2c176ef9e0618b2015e515cc8015795564109e0a34abc5563bd67a0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1825/magpie-cli-linux-amd64"
      sha256 "78b7990fac94932d78b0c7456c966a69aa0a741c88240fbd4823298f6c2171d5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
