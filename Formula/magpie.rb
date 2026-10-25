class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1529/magpie-cli-darwin-arm64"
      sha256 "d96e07ac5f928ca0dd7e9eecae2c9b53a749013b3a8dde792aa1fbbbf6cae447"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1529/magpie-cli-darwin-amd64"
      sha256 "582c0b7a8c3b022269ffc09cd6952012e2c9005d249b62d6a9189c426ac931da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1529/magpie-cli-linux-arm64"
      sha256 "6b219d8a9025eddc33421325eb60620a18c162e98502355e4bb755c9502892d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1529/magpie-cli-linux-amd64"
      sha256 "669a1e8b57dee945ee5c58f803ebf4dc626606a9d263af259a64a039a37bf8ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
