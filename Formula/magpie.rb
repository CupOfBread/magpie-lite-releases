class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1361/magpie-cli-darwin-arm64"
      sha256 "8c9cad681c69aba3d0b3a5cd375dfae7f163eae7f6e1a57fb59e98d4582f5890"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1361/magpie-cli-darwin-amd64"
      sha256 "32cc429f94651a180133a3a7cd5013d6ad57a2bc83084e51a28086f6eb2ccdab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1361/magpie-cli-linux-arm64"
      sha256 "21e24b2704cc5e6c18c73e5c31efadbcb80f724d85cbef8d1d09be7618d86554"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1361/magpie-cli-linux-amd64"
      sha256 "881fdfcaf5b4e182b9d26d790492402b7c96c980e8ca6189b287b2d3c2e30445"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
