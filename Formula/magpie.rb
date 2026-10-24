class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1426/magpie-cli-darwin-arm64"
      sha256 "c3e3faf670228a2c9f8c7d88887707927c79261f0c7ab37b598011c9fb574bc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1426/magpie-cli-darwin-amd64"
      sha256 "4b859910ad57c13df166c5912a1f9436c5b2f494709d27d4bb0a33c97493f695"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1426/magpie-cli-linux-arm64"
      sha256 "b46d3a3e9f2865da7e4372bb453c87b8076da4518f9451b85f6b9da751abb05b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1426/magpie-cli-linux-amd64"
      sha256 "71ed212d9ac6cce5d24c54522f0ecccbc4a88e8509a3c9acabe5ab219c1adf18"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
