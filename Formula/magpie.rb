class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1811/magpie-cli-darwin-arm64"
      sha256 "93a4e224dcd31d5c3e08ab6a7fc7435222d08b696c2ce40a5ab1abb11186deab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1811/magpie-cli-darwin-amd64"
      sha256 "5bce787c77f8bba4ef528a457d14d984a24484481565ae8e39a28e23b12501f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1811/magpie-cli-linux-arm64"
      sha256 "7846991c4604d321dfaf7019a3b6066da5265d82e2cc9a127f708af3760a2c88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1811/magpie-cli-linux-amd64"
      sha256 "c0ee1284275194d1a62d0223a16e79f064a49c60fda1c5235a823022a000fd57"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
