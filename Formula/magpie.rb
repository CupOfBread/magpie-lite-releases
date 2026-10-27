class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1684/magpie-cli-darwin-arm64"
      sha256 "78e0b0e87b5f2df5f402f84c911bc9c969bc2313e5071178cefd78433f686e47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1684/magpie-cli-darwin-amd64"
      sha256 "a6e18505396a1feef87ec5a804d0565224e0c1bccb5a3fa8aa5a17c9c033b1ff"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1684/magpie-cli-linux-arm64"
      sha256 "96abbe9d6408d462de846d30d829d25e93656474e1f3348f4b6ba7c95d20a519"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1684/magpie-cli-linux-amd64"
      sha256 "54b092f2cfd6de4ef6f0e9da30859340a4afb34d1acdb5beac245a61b82477b4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
