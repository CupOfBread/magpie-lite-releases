class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1746/magpie-cli-darwin-arm64"
      sha256 "dbb8f62172cacd0e66ab5c8929e275acada947a5cd91b494962fd2d7d895fa90"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1746/magpie-cli-darwin-amd64"
      sha256 "b2d7605e3346c69b5237d8df5f5ec3d930a165a82defdc07f71af385eda8142e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1746/magpie-cli-linux-arm64"
      sha256 "90c4fbab077e63d9013ec4cc850a08c417ea07c4eecde7f5756cf4aaf1479301"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1746/magpie-cli-linux-amd64"
      sha256 "61480fbb2eb1ab706f8bb9fa037b70f5bc8a1e5222b455ba61342270a5023421"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
