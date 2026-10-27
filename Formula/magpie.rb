class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1732/magpie-cli-darwin-arm64"
      sha256 "b6622e75df439a9ac115d4ac0f04600c115c1ef74016b8f91b8fb6b8ca8868cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1732/magpie-cli-darwin-amd64"
      sha256 "e95d410fb3049223c4086e84138d2f47bfc3d8fdf7151124f4535f9f4951964f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1732/magpie-cli-linux-arm64"
      sha256 "1bd7e786a952c2e81aa453f73ef7563fbd94f8e596fdc43851553829c5de9033"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1732/magpie-cli-linux-amd64"
      sha256 "2f2ad26cfb70dbca081854bf75dca3178bc5999d2522c76ab9ff577013000cb1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
