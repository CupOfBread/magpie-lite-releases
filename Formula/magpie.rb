class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1831/magpie-cli-darwin-arm64"
      sha256 "60f1d290e882365656194af9d0207a629d47834508b2da6627cac65e2af7d039"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1831/magpie-cli-darwin-amd64"
      sha256 "add99ed37db1dd17a5d990dad9e1693e3b9fe5bed5d814533ad4bdde4dcf00b3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1831/magpie-cli-linux-arm64"
      sha256 "76044ecaa450d8a171ed8f07a6d5a946b0cb6a4ee370e6ef0c02ae3d6f1fdcc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1831/magpie-cli-linux-amd64"
      sha256 "487eeaceb2ed798dffcc9b49c0213e7d1f922170bd05086611a844cbebf97d22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
