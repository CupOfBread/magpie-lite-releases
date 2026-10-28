class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1813/magpie-cli-darwin-arm64"
      sha256 "990e4336dcb4c59169772847057597c4da817b55824224c4ab9013a4b15410f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1813/magpie-cli-darwin-amd64"
      sha256 "a5c9bcc3b894a4b3da11f74e8b3fdb4e70d36e0b344efcd32ecf6ee8e4dfeebd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1813/magpie-cli-linux-arm64"
      sha256 "bd068a657e17be3e1a898e943ecc073b0b9b5913ece2157b4cf98a53fa936d04"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1813/magpie-cli-linux-amd64"
      sha256 "8458f20857a58f4f53e06df6524cac2768d7e87ee7d54ab1625b6df91437c841"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
