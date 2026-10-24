class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1435/magpie-cli-darwin-arm64"
      sha256 "0b01341ed0b9fe70539aea7619004cec3f2298f00a82c9d770727e10c69e9de7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1435/magpie-cli-darwin-amd64"
      sha256 "379acacf8e4dc83fa8e01b2566c3707a3f21b9a25c804de2549355288cf2944b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1435/magpie-cli-linux-arm64"
      sha256 "d1259b2d6c33b2428952971dfdf3414d8084c69af37ee6d158164e5f0faaaf13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1435/magpie-cli-linux-amd64"
      sha256 "749875880bfe2d9b6a8371313f060fa430ec11a11e74543e4180af77df4e277e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
