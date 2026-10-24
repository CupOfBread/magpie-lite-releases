class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1412/magpie-cli-darwin-arm64"
      sha256 "ce3d65c54f8cd1d7a38ce66531a72c87a01c7be10087e3e82664fbb314809c19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1412/magpie-cli-darwin-amd64"
      sha256 "a7ccfd58c728dd2406883e09f42789354b69bca6b04532ca85396cf0d8ebc887"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1412/magpie-cli-linux-arm64"
      sha256 "1712500d015abd85366b05ae07e37c1358d19aa31d8d720ec834af2be373d332"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1412/magpie-cli-linux-amd64"
      sha256 "5dc37bfab5f296d2ebdbab7dd9d78413373b2a6b7446e9d09a8aeaa17fb414e8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
