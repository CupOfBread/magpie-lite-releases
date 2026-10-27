class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1673/magpie-cli-darwin-arm64"
      sha256 "5cf0546254988847ac56a38a38771495024f7b8ff34181f81cfd6b28b29444e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1673/magpie-cli-darwin-amd64"
      sha256 "97e66bc57c32ccb250cde233392d18d74542d3420b22699506c84ab5ef451b67"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1673/magpie-cli-linux-arm64"
      sha256 "9753f5e3f06bcecfeb35ee6fc0de668c2f3c3dd121772b5407f694d5978a9f05"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1673/magpie-cli-linux-amd64"
      sha256 "7e04470f85fe6ce2741de98715e505fbdf8d3c832f44111b9ba8eb38837dd8eb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
