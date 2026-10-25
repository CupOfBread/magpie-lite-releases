class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1544/magpie-cli-darwin-arm64"
      sha256 "c4ce9219b09cdb84130c438559b620fdecc543cfef1b0caf62b1f5cf9bd9d797"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1544/magpie-cli-darwin-amd64"
      sha256 "5c4dcc097d3fd4f5d05947db7bfda97f4849f2beb62fe2385c5e9867167a20c1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1544/magpie-cli-linux-arm64"
      sha256 "0515b3187acd85e15d9182c83047cad387004b3a775556b14bea715f81259364"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1544/magpie-cli-linux-amd64"
      sha256 "954473eed5e9c64ad6e1cbc6c7c4e7c3e35dd03ecdabf9dc52ed8eb20369e2c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
