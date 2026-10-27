class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1727/magpie-cli-darwin-arm64"
      sha256 "e20354c816acd9c0f138ced322c825918debc583e226099cadbeac9a1137a929"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1727/magpie-cli-darwin-amd64"
      sha256 "428744e4c6170e8859ad145961f9bbc125607878ab1b153157b0e0a800489f85"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1727/magpie-cli-linux-arm64"
      sha256 "f4e4793f2b5e422380c993144b8a0907db782ac7ba490f40a17f525b77a547fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1727/magpie-cli-linux-amd64"
      sha256 "f13133185d898120e45b5c6f91cd75edab5cd4bc2fe86067ada477f65e39e95b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
