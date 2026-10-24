class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1432/magpie-cli-darwin-arm64"
      sha256 "8129a05cda6f5bf5395efea0006d648fa7b159f3122ff8e5d02d627321990e63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1432/magpie-cli-darwin-amd64"
      sha256 "680dd66d5f6dd2d2939ed3e08d2df862b45628093fda66f007fc0b099340558f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1432/magpie-cli-linux-arm64"
      sha256 "87f49f2b0a1608ab7ea6f308d24dfee4c7271a9aa8e5f195a1fc4713c95e60ad"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1432/magpie-cli-linux-amd64"
      sha256 "78c90b5124ad8d2a83e938a4d3b09760a7f72a4445962b1230b87ae5e3265e70"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
