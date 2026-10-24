class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1417/magpie-cli-darwin-arm64"
      sha256 "7a0dc21eaed15f42ed1e2cf63e246700deb97006f64bb19d3dfbec195a69677a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1417/magpie-cli-darwin-amd64"
      sha256 "79739adaa045fc204d68d0a86212eb87f55cc9b11e14653063ff578e75eb280e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1417/magpie-cli-linux-arm64"
      sha256 "ffc7a9c79a98e464bf83044f5d05cb90cad32dba0d10c17eabf16913cb1ca04a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1417/magpie-cli-linux-amd64"
      sha256 "dcf43b444ef03eda39ad1f15425234cecb1058f50cfc90a231093bbaf7370cc9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
