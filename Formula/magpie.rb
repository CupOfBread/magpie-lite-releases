class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1625/magpie-cli-darwin-arm64"
      sha256 "f1d8e86ee4fbc7612d66432d37921488bd8383421923351e5ba22b051cabe2c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1625/magpie-cli-darwin-amd64"
      sha256 "a0718ce771c5964a70a21fb469d51cd0c8294252403b5a55fe05a8809af1e496"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1625/magpie-cli-linux-arm64"
      sha256 "cc0855a4b8bd88061c993f3b27a74eb8b3f6bc2d6b4f7016044e674a8d21bf4a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1625/magpie-cli-linux-amd64"
      sha256 "a047babe7b0dc93726c304c3f394c53bd6095755f0e1677301d3bcfa79f41325"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
