class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1680/magpie-cli-darwin-arm64"
      sha256 "4eb89954fd5655b2de68ca47a7ff76a594fd5fc511650fb3c12b336672c499cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1680/magpie-cli-darwin-amd64"
      sha256 "6616b6c499131fe813b2edf8ba2304f641e405a671232403a3f11c02bdde3c17"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1680/magpie-cli-linux-arm64"
      sha256 "53a7b773ad3554b766f903847f273e69adb49ebe9a144ea4f65c07187c49f6fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1680/magpie-cli-linux-amd64"
      sha256 "058db40424e52bb7b8459270e716b56468de23a8412f6ef06cfa5fe55848d06f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
