class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1492/magpie-cli-darwin-arm64"
      sha256 "448e6c4b269ad5d0671e85a04d2d2794e81720ffac7e047322a4e748dae8443e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1492/magpie-cli-darwin-amd64"
      sha256 "e34f0fc01ac496ecd91f4babd188e2d5e0d2f2cf6d51259531a1205aa2865176"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1492/magpie-cli-linux-arm64"
      sha256 "f7fb24fb06cac3b72224adfedce3f7c1d135b00bb29736f105f7f188eb425b20"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1492/magpie-cli-linux-amd64"
      sha256 "be8b044bef89d1930e30d5685a4b87d02e98236b4a891d0192f1d93a7e0b20d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
