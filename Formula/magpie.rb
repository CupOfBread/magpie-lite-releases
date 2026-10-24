class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1393/magpie-cli-darwin-arm64"
      sha256 "3bf29e23d3be81d1c45b713da67a03d3c449f7ff7638dfdfc71e4751b8b21695"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1393/magpie-cli-darwin-amd64"
      sha256 "73e27bf8b2c0db6f73d84c288c8b994a81704e70a2c4399fea2fd61e91a3e2b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1393/magpie-cli-linux-arm64"
      sha256 "ac87147caca3e2ea82932d8deb8dedc78a383cad2dcd1f6558fc4b6da736a9c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1393/magpie-cli-linux-amd64"
      sha256 "6b7df4efe128044be854fd9fa4063ab7939128816d31a90ea4f19a65fd48cb4c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
