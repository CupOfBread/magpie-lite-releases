class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1820/magpie-cli-darwin-arm64"
      sha256 "fea22f9bf9a37d72891b42221ff07754dda9a587eac7188902c84084793fcf5a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1820/magpie-cli-darwin-amd64"
      sha256 "59f85fe455535f1f4486c28a3d474d89458d7ac8873816d74d6f9e92ec1cd0a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1820/magpie-cli-linux-arm64"
      sha256 "2ba2cfdc30459bd8776509673fc0df62773ced56c543981bd00f65405d73fc95"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1820/magpie-cli-linux-amd64"
      sha256 "0f77b2aff782172c1f02a6d9e69d124b17d01700bab32393922c5cc05638d7f8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
