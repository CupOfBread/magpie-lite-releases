class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1574/magpie-cli-darwin-arm64"
      sha256 "b8f0d5eecb8a83205bcf983de651f46c50103345452209b94cd49b0882777472"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1574/magpie-cli-darwin-amd64"
      sha256 "1913f71e3399ca14b49719c9351c2dce58a3872f745c8bde06823f1519631208"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1574/magpie-cli-linux-arm64"
      sha256 "ebe877ee1732da92333d050086cf65c9aa989b7febea77d6a18dc0eff4a7631e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1574/magpie-cli-linux-amd64"
      sha256 "5a0252c00ac881b065202908035b14687f45dc64566747a67929b2850df30d8c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
