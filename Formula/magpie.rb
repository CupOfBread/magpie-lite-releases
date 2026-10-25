class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1484/magpie-cli-darwin-arm64"
      sha256 "a9f581506be9e615b994a59ef733791a3206206e377307910bb97b48158b48d8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1484/magpie-cli-darwin-amd64"
      sha256 "f1ea3b3e83e53a2462bd34a9c299efe3fa5c5ce16c99cb452e728fb6a26fe36a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1484/magpie-cli-linux-arm64"
      sha256 "7dad5ffbc993fc9bb14d306f7962e1c59e7a280ec839b3fbe110840ed931b341"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1484/magpie-cli-linux-amd64"
      sha256 "9807bc9806d8df0305eddf9c690c8fed6db4959d47c1331a8dd5cd0e687cb01b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
