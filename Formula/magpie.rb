class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1768/magpie-cli-darwin-arm64"
      sha256 "d189d9504be5e38f20d2fa9c45a874fb8318f2918a13adc909c3ea4bc6adea07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1768/magpie-cli-darwin-amd64"
      sha256 "644432d6caf4b55fee112abe853bf5717498615d0166a3f57cce797142922772"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1768/magpie-cli-linux-arm64"
      sha256 "992575e9d32c42dc3d21c16f5cb4b7d65a63fd47f8406386f5bf55ef17d29793"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1768/magpie-cli-linux-amd64"
      sha256 "e3eebd23e9520556b421dcf64d28c826c04064ea391102568ba6d9b6e3222e29"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
