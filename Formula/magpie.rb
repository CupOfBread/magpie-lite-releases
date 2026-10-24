class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1381/magpie-cli-darwin-arm64"
      sha256 "c0ecd87cb8f4efb910519c552fe01d674572eabf17af776a4d07fec875ea42c6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1381/magpie-cli-darwin-amd64"
      sha256 "1c258209847fd9e98a4fd6229576cb31b1c0db880dd59753937b2dbc0c2d45c6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1381/magpie-cli-linux-arm64"
      sha256 "85731b4118e0a74eb057306b5f4f4145fe5565fc046d7d8c14fda81a4f889ecd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1381/magpie-cli-linux-amd64"
      sha256 "77d72925b3c90785546a06008ad8b44effd70d55d5119086da555a3a81ee34b2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
