class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1371/magpie-cli-darwin-arm64"
      sha256 "ba7455e105458bd8d2e1d821a1998e31216e0e9869075d23bbd2900123bc8679"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1371/magpie-cli-darwin-amd64"
      sha256 "6083ada2a2df210bbb41b8f217d2b31992ccf735818ae39bb21908911123915d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1371/magpie-cli-linux-arm64"
      sha256 "94d7fa9116a1cd9fbaeaa318d1ccd9e337e86044712c461e0879d37a09a2c6f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1371/magpie-cli-linux-amd64"
      sha256 "227c2300282299dca1044ceec52191f6e076ce0120bd520616acecd6b0287765"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
