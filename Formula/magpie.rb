class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1377/magpie-cli-darwin-arm64"
      sha256 "a587734031dc865321602d9d1c7ae420d2f4b6b2ae4c895e654508d4f10fdcb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1377/magpie-cli-darwin-amd64"
      sha256 "e7b87db21bd29dc295a26ea79d20c866d20114845aa9669687ae3eb00af8541b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1377/magpie-cli-linux-arm64"
      sha256 "1252958bfb7d3003ef30e7f5831edaca48a93fcc8c6d67bc99ddce182e08ec7c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1377/magpie-cli-linux-amd64"
      sha256 "f7558a0a8541d6559f876cd92c6fe6aaa6cb6b7763e8deaeb8234fa2ad9ddbf6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
