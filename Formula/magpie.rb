class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1568/magpie-cli-darwin-arm64"
      sha256 "c7596f0a52c52a6894cb3b68fde8e00a95289d466f8d547e0b5513c7b845ff1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1568/magpie-cli-darwin-amd64"
      sha256 "be5e5292f68253f72da3ebfdc62f343081d2016d33224392a36e61ec685c1000"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1568/magpie-cli-linux-arm64"
      sha256 "dd659ab81209473eaa48cb106934a280da17b64bf4b972175612e03319f6159d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1568/magpie-cli-linux-amd64"
      sha256 "a01b10381f3d80625fbdc9ee1f45ac01154e285cef80c0f03a507c844f49f4fa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
