class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1482/magpie-cli-darwin-arm64"
      sha256 "468f284d9aaa25ada1cd72d38ce911fef9f250d5bbac20ce5e96bc9b20964f77"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1482/magpie-cli-darwin-amd64"
      sha256 "3bb2e7ad47bfc276c76547a7cf1e18228e4f09a34e5aaa799d7239704bfc218d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1482/magpie-cli-linux-arm64"
      sha256 "cfae8bcf7b9ceea50086caf684b1656cf6dc533151c3ad29c2bb73155f8dee78"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1482/magpie-cli-linux-amd64"
      sha256 "f31dd5e64e3d53c5cccf0bea7a4c70e4fa9eef740595ae7af967a2730df3ba4f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
