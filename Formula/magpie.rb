class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1616/magpie-cli-darwin-arm64"
      sha256 "dde9e78a7948f6355e6e76f14b6051a4edc8a22b4dd7de09bc6c502e2a95c15d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1616/magpie-cli-darwin-amd64"
      sha256 "60cfd59a53fd4bfa03a9433a10a5e541e2b070aa08e749dec589908da0c5be1b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1616/magpie-cli-linux-arm64"
      sha256 "9f3f7bb1f1b8cb04a4d7c19163b4a9727e58a735476de2f9911543f0846867a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1616/magpie-cli-linux-amd64"
      sha256 "b9429f9a4814b70f2f0d4e454db000c51efb2f5717080bd36557e09eadf0e256"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
