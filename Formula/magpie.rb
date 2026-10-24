class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1424/magpie-cli-darwin-arm64"
      sha256 "30488bb5d9bcb318c80f7f524270b6871834f4f18e840b7dec645f798d4c9d64"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1424/magpie-cli-darwin-amd64"
      sha256 "3ef5b34714c7ec7a2704d3ee7900d5623ec8e6aa731e7f7ddf0a381ec6702fdf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1424/magpie-cli-linux-arm64"
      sha256 "717b0e4ac6fb70d0717b2c249030901b8e3226df6c315e99ec52024c0d40a63f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1424/magpie-cli-linux-amd64"
      sha256 "607704ee8980cde337175b300c6cbb8d28e17c7a106748fe28e0d50e4a4f8f3e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
