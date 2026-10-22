class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1323/magpie-cli-darwin-arm64"
      sha256 "43de894dff6b32eec4fa22281b26fa706f458540eaed3973b3e21d5561032052"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1323/magpie-cli-darwin-amd64"
      sha256 "0c3c6e6bfa7afcbe061b5bfb170a56551169ded69a8b59e203240972b83cc89c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1323/magpie-cli-linux-arm64"
      sha256 "f20cf94812e9d01aeaa7d1f4526d0b4d107ec39bc69e7b9e8c702d4ffb287f21"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1323/magpie-cli-linux-amd64"
      sha256 "a81949ab40df5fa191468f0e4eb100b451533a0181922ac6c872ee1a3ca35b6e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
