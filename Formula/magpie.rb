class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1419/magpie-cli-darwin-arm64"
      sha256 "ad084d61b9e5eab5425313c64b6bdbac19d2d731255b46d441620b023a0792a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1419/magpie-cli-darwin-amd64"
      sha256 "dbc4b6ff06d7b661bd05748eb10319c8927a560e23bfbe0c23c97fd398a35fda"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1419/magpie-cli-linux-arm64"
      sha256 "d82a6baa97506367c2e2a68f82af2111b7e9cf990533c21d03ef5029badc026f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1419/magpie-cli-linux-amd64"
      sha256 "781f65b5c385b5b98a0bf5934f160a9387577491afbf01344278ed1389417618"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
