class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1442/magpie-cli-darwin-arm64"
      sha256 "fc8bd8db24e960445cf2a6668852a7cac0b598b3710623edac20c5e89ef75d0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1442/magpie-cli-darwin-amd64"
      sha256 "55d214db93f4a53f59d27bef78f7c657cfef114d69566c408a298bbbc91ffdd3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1442/magpie-cli-linux-arm64"
      sha256 "f8f5b1326b8fddf7421a0296228c6678e9c34f4bf013d4b6b1e182baf561f803"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1442/magpie-cli-linux-amd64"
      sha256 "4443d93c545682ff5b3bcf2373c6357e59bfae0cf7b239eccc35a5587c582ac0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
