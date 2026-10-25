class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1480/magpie-cli-darwin-arm64"
      sha256 "6b486838a42e4c77e41aabe314a020d5b8bf4440f3de3e2206f8ae34f77a17ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1480/magpie-cli-darwin-amd64"
      sha256 "574f7253a2ea00d601d740cec2b6c5b460baee53d4d5a56fe9b567ebdcf879d8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1480/magpie-cli-linux-arm64"
      sha256 "a1901c91965182632fb01b4220c4ddfe5f9d0ce9488e7ac9ca5cc0938d169532"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1480/magpie-cli-linux-amd64"
      sha256 "8c389b2fba32e95d6b2d81ace5362132cc640a751424118f50918e817f2c9b6a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
