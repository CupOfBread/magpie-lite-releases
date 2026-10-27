class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1718/magpie-cli-darwin-arm64"
      sha256 "de7605c3d750196729cf984a09ec55bc83b4f0cbb3efda2033ccd78f8ceba5e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1718/magpie-cli-darwin-amd64"
      sha256 "2f0c530413df298aade08532721c3c9f89fcad4096a072583b814dcc5172e00c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1718/magpie-cli-linux-arm64"
      sha256 "3e3ce122315b2aecba90f139f50985e6d1b0051f2e4f62ee1326429a2ce131e3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1718/magpie-cli-linux-amd64"
      sha256 "6f9dc161dd195e9df397f4ef75e4df8cf137d747fdf2fcc8b2d17223878d1bb0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
