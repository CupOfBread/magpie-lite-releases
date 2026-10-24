class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1465/magpie-cli-darwin-arm64"
      sha256 "7d3c434b37b5e92bf524fbfaa2e923af700b83484febfe85ec3dfad416e8d028"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1465/magpie-cli-darwin-amd64"
      sha256 "d22cae473aa39a6010ed9ad9e9d0f95270d1406393cd3495897966fee1386be3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1465/magpie-cli-linux-arm64"
      sha256 "e41b5b77d088f0bba040b686c7cc7ad64cb7c5bb51d057ef17227abc226901cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1465/magpie-cli-linux-amd64"
      sha256 "0be671487213da33cabaa81241acadffa366ad9b637a3953abcba746b4989047"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
