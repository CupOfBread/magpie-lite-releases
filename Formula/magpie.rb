class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1704/magpie-cli-darwin-arm64"
      sha256 "70221b5133d3b8bac1a98b3937617ec4d9906bd36d0790f323605422d19b81a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1704/magpie-cli-darwin-amd64"
      sha256 "78de8ba279f4a51bf9b99dbccd208864834b2085bbe42ce3cda662d23c495e93"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1704/magpie-cli-linux-arm64"
      sha256 "cffef17bef3bd36732e0998b3d0dba08da8614604ed6ddd1558d8f81c4f7f894"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1704/magpie-cli-linux-amd64"
      sha256 "37e64d1578b66c1cca022f42ecca5589a1c2c830e937795f780b1e09e64a3de3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
