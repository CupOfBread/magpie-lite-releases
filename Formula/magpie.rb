class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1614/magpie-cli-darwin-arm64"
      sha256 "459d1ced7e73ab2d17d020a8016a73e5f0c301ba049f72a0efbc796930f69629"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1614/magpie-cli-darwin-amd64"
      sha256 "36836d73fed465e69c0de53d572c5e277bad6b63dbbbf7834c87aaa2ac42175c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1614/magpie-cli-linux-arm64"
      sha256 "a59ba98ebe7a5e22deb39e5aa481dd314c90684a6c733e6f527b4100575c9169"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1614/magpie-cli-linux-amd64"
      sha256 "5c42f17ca729295d018d8b9ea1ec86fe5b05d471414ccdb1ed325b2d0cf945fa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
