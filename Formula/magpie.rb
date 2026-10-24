class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1409/magpie-cli-darwin-arm64"
      sha256 "b78234e71fd347ccc4b4c600a3ed48b6dfa0ae39c818fe612738936e3c7d4156"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1409/magpie-cli-darwin-amd64"
      sha256 "8ccb59ee1f61968b8025c1f404ac3bc3d003bdc6f5773ce6169be9c3051499f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1409/magpie-cli-linux-arm64"
      sha256 "90b7b785cd1734a789ba0ba6c8928d85924930825e9e62fff24d44ec77f70e3c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1409/magpie-cli-linux-amd64"
      sha256 "1d25307b410819448762fee507a96db2303ff06130025d69c3714ce034d67e44"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
