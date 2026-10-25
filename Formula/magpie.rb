class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1505/magpie-cli-darwin-arm64"
      sha256 "55aa22d9d4d56bd4f275b11b278ec2de7173cf1d44409c7bbff6d88766b8f774"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1505/magpie-cli-darwin-amd64"
      sha256 "de83a5545688d4970d401619276ecad58108b50e6ecd221374c97280f9de1fd8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1505/magpie-cli-linux-arm64"
      sha256 "8884801aa6ddab08e1cdd49b9dc1cf2e458fdcb202ede10990403ba4bb2851a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1505/magpie-cli-linux-amd64"
      sha256 "2da76ebf5e2a69dc983bfd5830bdad8d10ac4e98377256d3b55964c4ad9e9ea9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
