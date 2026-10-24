class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1427/magpie-cli-darwin-arm64"
      sha256 "ebda5bf35a8f3e9ca3bfa00569059dccfa9d54c9a059094db9ccc40f2177dec8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1427/magpie-cli-darwin-amd64"
      sha256 "02c2912208f1252de59e06026b7610c97212c4550dd5e3b026b4d5705b4f847a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1427/magpie-cli-linux-arm64"
      sha256 "e9f67764a435597ca38f2490170603af73b43d4a364256d5a7afc32ab543b806"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1427/magpie-cli-linux-amd64"
      sha256 "84582b2a1d4b144a7ba17cd464d6dfdb45eb7a15eb0b427d9524a2a03fa035b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
