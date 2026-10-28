class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1832/magpie-cli-darwin-arm64"
      sha256 "fa6b0df18e1a7a1226d0bf706336ef4e8ec3cdda762f71efe5f922fc6a52ced0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1832/magpie-cli-darwin-amd64"
      sha256 "92f42946f4cf4d7505d5e08a9115cf4562660d59f8ad8ec23e43223f29169620"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1832/magpie-cli-linux-arm64"
      sha256 "8290f2352e8d914e9aaeb73fdee6286444f5dd79adbd219540f85a0ed9045fb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1832/magpie-cli-linux-amd64"
      sha256 "7e0b4a1e0a247b7dba5e5964436620940c3d13f7f66cc908418b90a3291eb67c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
