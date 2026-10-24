class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1415/magpie-cli-darwin-arm64"
      sha256 "c3105cdede23279fe2ee955e443a5533afd4e9c10824d34165fa534e7e8a09dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1415/magpie-cli-darwin-amd64"
      sha256 "680d5c7f12f387561e9df56339d7f3e24ce6f70933a9a0f3f1381c516b47bec7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1415/magpie-cli-linux-arm64"
      sha256 "c392a66d4a02d9997fa90c881b6e9cf7e0aef938ffcee2e995217783486cb39e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1415/magpie-cli-linux-amd64"
      sha256 "47afafc0d28f6ce6cfc12fda11fa2be4fde9d7e12e3b49bba4191f4671d19858"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
