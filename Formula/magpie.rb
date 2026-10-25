class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1499/magpie-cli-darwin-arm64"
      sha256 "dbae65e70be291fb3e56749e1627c24329248e5da21d1a595e751a1e1460bb92"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1499/magpie-cli-darwin-amd64"
      sha256 "2f7de7d770d4769d3e53528ed8f7bde6c51789adca049f583f4252b4cbfb406c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1499/magpie-cli-linux-arm64"
      sha256 "3ac0e629e5613eba06113e2a718eb83e708ebe198eaf3b77d1e0d4622b1bef41"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1499/magpie-cli-linux-amd64"
      sha256 "dbce1a969967a4c857155bc1526bb960c8f92d417d11413b1cbde66ff7dfa511"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
