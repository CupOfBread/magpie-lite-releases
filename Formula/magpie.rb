class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1552/magpie-cli-darwin-arm64"
      sha256 "f844a883be5441d28dc2b9672190d66493bb646ce8b19bd6a5fd3894f5813eae"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1552/magpie-cli-darwin-amd64"
      sha256 "155dcc630d7c17d3787ae976986aee03ac5f0bba42a26e6181c8ab9e37d967a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1552/magpie-cli-linux-arm64"
      sha256 "98a5ec7c1dde63ffe2f9612ccdde599fe253f84137a24d67a5c972ebc168457d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1552/magpie-cli-linux-amd64"
      sha256 "34e5e416658a0674643d026ed2b68b2eca765ba93ce4224020e8f0192a6cf66d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
