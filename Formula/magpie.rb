class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1433/magpie-cli-darwin-arm64"
      sha256 "e8c27145a8dca7594a22ea32d443694a85a222889636952e48a6712c605b950c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1433/magpie-cli-darwin-amd64"
      sha256 "2301dc5af0d273ac0677889391263d463afef246f230217ce9cb137cd653ce31"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1433/magpie-cli-linux-arm64"
      sha256 "6c908bd22366102895d48270179ad86b2c11b7de21765a749c0671bf7dd2ff08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1433/magpie-cli-linux-amd64"
      sha256 "7861fc6bceb7bbc65af6fa66cc8a2be58009db75c02c7a50cdd7a0565d92cb73"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
