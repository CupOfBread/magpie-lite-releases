class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1774/magpie-cli-darwin-arm64"
      sha256 "f568c667b57caa95b7d8d1f281d7cf5378be7cc616581bb9976ebff48d3648b2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1774/magpie-cli-darwin-amd64"
      sha256 "2d2809605c9a968557cc0e25b7e885a6ad1f8f0f673f046ff3b92379e2fdd9cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1774/magpie-cli-linux-arm64"
      sha256 "3734d53d8876a233bd8e57c78999e2038aebe52de184c146e4bed8b73a59f441"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1774/magpie-cli-linux-amd64"
      sha256 "6290e485744109d9cec8385d947bbb66423adfc4885bc0ca3e6c2a4d020670e9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
