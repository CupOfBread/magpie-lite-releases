class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1805/magpie-cli-darwin-arm64"
      sha256 "54c85c9705a82a91d98b8974049941f5ab4cb95cf5fd643461800eb373831118"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1805/magpie-cli-darwin-amd64"
      sha256 "e27c5f73eb27859b13bab5203b8f652f5bc37d58e5d39b6a2c2ec51a648480c5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1805/magpie-cli-linux-arm64"
      sha256 "f41801465cd64c2582d0d285fc3663ce3b92fc943e1fc82f2789308d4ba639f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1805/magpie-cli-linux-amd64"
      sha256 "5ff7f9e3915d729e4da88a7712e5464fa89cdc34ee659a61abab125d82bd59e2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
