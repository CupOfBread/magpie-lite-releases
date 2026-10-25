class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1506/magpie-cli-darwin-arm64"
      sha256 "615d790d799418ef4a094986b8c832bd8151136c38555111606fc5c56bde0bc5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1506/magpie-cli-darwin-amd64"
      sha256 "762e8993cdbf7cbb0ade4324161555fdac8f2dffe77eb6ca497368925d393dc9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1506/magpie-cli-linux-arm64"
      sha256 "90f59b1b9be590d93a5072cacd6df7fb27996ba9dd3a4d8d1778ced90149dfe9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1506/magpie-cli-linux-amd64"
      sha256 "fdbe5307217a5628e4b4d6b0cbc0817fb56e517e44b60a0741bbf6e635379461"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
