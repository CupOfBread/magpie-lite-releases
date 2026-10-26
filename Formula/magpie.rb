class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1617/magpie-cli-darwin-arm64"
      sha256 "59b6dc9a4e1e96a8270e1a93f238ea3c06386db0ad17613ed3509f355ef5b3b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1617/magpie-cli-darwin-amd64"
      sha256 "cdf50e70102e0bc9fd0ae3e9730dc48393cf8802f217b94476ffc801eb8aa9f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1617/magpie-cli-linux-arm64"
      sha256 "6738b8c6a053c24b329a0380206ff848fa7859899886c0546f0da66621e32a09"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1617/magpie-cli-linux-amd64"
      sha256 "236f17489a70167554143e38e226265af5a262a8e3ce2514aad6b2b72a86ddff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
