class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1749/magpie-cli-darwin-arm64"
      sha256 "2d23290702b4400c168921123dca7d0b623a616a8bda1683b626e46b38d68bf9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1749/magpie-cli-darwin-amd64"
      sha256 "e8a14e13490c213f39e4c7d614ab615306095e1e13a322e0bad391615dbddf6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1749/magpie-cli-linux-arm64"
      sha256 "e70a9b6066ea291c08a01ee2b1d25626205dff80c304ecbe7e18dbee9f6a359e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1749/magpie-cli-linux-amd64"
      sha256 "9cffe59fd0adc578cb6debbb1e7e63fb7b151fe9694da77dd62e0dded114eab7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
