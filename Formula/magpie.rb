class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1543/magpie-cli-darwin-arm64"
      sha256 "d0af307ea2d2e7841ea5ec87842b07fa0da142a7a9984ad27608da690362e322"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1543/magpie-cli-darwin-amd64"
      sha256 "87957ae1902ab8fb0e89b94986a566f165527d0c4482d017e4b704db715f21cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1543/magpie-cli-linux-arm64"
      sha256 "a3d0ab1d33f5a00ace5880bdd94ceaeb831e47455858c2affd5be21ef80a62dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1543/magpie-cli-linux-amd64"
      sha256 "27c8dd55eda3a4f288f1da700d1ca0331075d3b1a4dda7d671e51a594615261b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
