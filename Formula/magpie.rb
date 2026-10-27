class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1747/magpie-cli-darwin-arm64"
      sha256 "63c6b33441c91488caf33fa129b9ee7f0014f7db4e98c11884a2bc60b63788b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1747/magpie-cli-darwin-amd64"
      sha256 "20f50bb97c191e2dd0727b9b0e66ad6c27607e8e2c99d5a138ddc1db4a3a9551"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1747/magpie-cli-linux-arm64"
      sha256 "e90991ffbda95b7d24d73ccff6e18a2f42fcea329ab6aa07e984044def83a541"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1747/magpie-cli-linux-amd64"
      sha256 "5785fdd0437108b909a137c597e2314390edc2304851c7b6e8db2cac2db8ae2a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
