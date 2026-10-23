class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1331/magpie-cli-darwin-arm64"
      sha256 "2b3a5acf96025999ad9e7fc9ce6633670feb1a44e16d1f47bcd5574439264c3e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1331/magpie-cli-darwin-amd64"
      sha256 "a32e60bea0b6fd007c53d9c8add3bb61c4027de489c387a55407f334c25604ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1331/magpie-cli-linux-arm64"
      sha256 "b41432f1a984804378ada349ecea42c125903ad26b38b7c6a7c91aae23e4e076"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1331/magpie-cli-linux-amd64"
      sha256 "f60f2b7d6063090f2fe9aa5ac98f9e9c19c26a10b5e6a020872eb49afb87543d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
