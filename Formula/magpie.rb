class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1551/magpie-cli-darwin-arm64"
      sha256 "c1df52123fd224a425373f7519261dc9bf27c35f6c19067c8b89317b5e72959f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1551/magpie-cli-darwin-amd64"
      sha256 "5613f5cf85e767576305b777d4addd5037b4c6aef672c73ddc39aad47a6a1f05"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1551/magpie-cli-linux-arm64"
      sha256 "01c24beb2da1a7941b15f4638f9644eceb53a47f60046959f2b8c3a28d610b9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1551/magpie-cli-linux-amd64"
      sha256 "7e93b6ff0ea61cecb23e9868ef8bcf529c5088a163f5867c5e0cac8ffeb3cc3c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
