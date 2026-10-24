class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1388/magpie-cli-darwin-arm64"
      sha256 "d730a485b9b1b31c4bb4a1faa86b1441bc535f2a5c588ed923f9673095d757c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1388/magpie-cli-darwin-amd64"
      sha256 "a64109ea98b74a88dfe52f53a5f4cff403fd40bf166871c2f417721f717a01da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1388/magpie-cli-linux-arm64"
      sha256 "71aa1c7fd43991993f38bb7f7ab79d3e0fa63e790776d816b17d949d972bfd1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1388/magpie-cli-linux-amd64"
      sha256 "70d4824299bbc3a20986c8672827ecef02d21dd10cb07d2c8de6b029c09bac6b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
