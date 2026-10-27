class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1698/magpie-cli-darwin-arm64"
      sha256 "38fb56c62fd8594e431f9e526b08ff8f23658e66ad2b2ebd5e8c868a61b76e6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1698/magpie-cli-darwin-amd64"
      sha256 "3e86c27bd60f30072ff1bcd28ff839d3c5ad783ebebce63987018e79ad41999a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1698/magpie-cli-linux-arm64"
      sha256 "1858158f4ae6e5a85e58ca4ee0eed748e793ce644f3e2d337c2aa299ad85cb49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1698/magpie-cli-linux-amd64"
      sha256 "0229479b4acc3017dda2fb6602ef50e93f5977cfe1b771e420c798df1d8cba4b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
