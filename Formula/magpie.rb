class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1380/magpie-cli-darwin-arm64"
      sha256 "f5e32e723858ed4990d2048f0cdd6656a95dd7b4e786d1409ce5897ef8018931"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1380/magpie-cli-darwin-amd64"
      sha256 "efe10726b00f7c99eca1ffc0c657f06c4c84afe82dd24fdd5cea947ce3e1aa5a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1380/magpie-cli-linux-arm64"
      sha256 "9cb78711f815067bfc4724b53940b7f2bd604cf6643b926c09fd117a5a6a5d19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1380/magpie-cli-linux-amd64"
      sha256 "e622aada31d914449ea88e6d5ae42ca42346a39e95b74a0d1643b3d2e9bed987"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
