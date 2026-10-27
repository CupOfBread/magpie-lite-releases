class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1729/magpie-cli-darwin-arm64"
      sha256 "b2b5b13d3c8cb83a55263d55a0acc8b18f53dbefa332fe9a3ca0523a63404534"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1729/magpie-cli-darwin-amd64"
      sha256 "e78f4451d1a9d69295a2d7dd1cc0c2ae8666f9167c2fbf973fd1640ea6a2c12e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1729/magpie-cli-linux-arm64"
      sha256 "2a3ca0feee5f3140b517f3ca4de86c1f57b298ca73adfb048c93a6fa5256ef8f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1729/magpie-cli-linux-amd64"
      sha256 "df07c7031e8b35e8c02f27f41c7bcb166214e1e898d5f9d0c2efbc0836cb7223"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
