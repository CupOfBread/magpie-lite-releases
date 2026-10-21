class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1314/magpie-cli-darwin-arm64"
      sha256 "6f5bd14af858cf9557c360ac13a46686fbbf094dd9353b946a007bde72642c70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1314/magpie-cli-darwin-amd64"
      sha256 "007a2ceed5a5a2bbcaa67b629089cb599508ab02e748d5af6c751fd0466a4292"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1314/magpie-cli-linux-arm64"
      sha256 "9844f252413bd1b8a0957c149c1a91e5b6fbb5b9144b5aa428a20643c68a8b50"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1314/magpie-cli-linux-amd64"
      sha256 "c996b3831fbbe5ef205adb6b871a129e680b9a898be4237643dceb0a49a9ba10"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
