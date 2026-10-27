class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1734/magpie-cli-darwin-arm64"
      sha256 "8ee955204f4797f690428c5c6d740cce0633590d72781f631999c1811d19389d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1734/magpie-cli-darwin-amd64"
      sha256 "851003bf705c202d781b0efbbfd0c94f1c231a58464e18d8cb89b03bf370f2ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1734/magpie-cli-linux-arm64"
      sha256 "fce0664387b5296b625b85ccdf5d706879b1b321cdc763211ed04e74eec94f28"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1734/magpie-cli-linux-amd64"
      sha256 "5eb34a60108bf19f8d7c1a31e31361a2708924c78daec13121c4ab51fec5c85a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
