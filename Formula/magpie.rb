class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1589/magpie-cli-darwin-arm64"
      sha256 "ed71679ab7bc7dc32f8c70d0be29b11d7855db82625643894e9c7fb5f504402d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1589/magpie-cli-darwin-amd64"
      sha256 "cdfd11e54ede5c333b234159bc6d62f5e89394c659d52c84be9a502e9c89f7c1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1589/magpie-cli-linux-arm64"
      sha256 "06ddb9e4d51714893bfa8bac52dad7e7b5b572e481e3d5f9d9ae5e8be94ccd47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1589/magpie-cli-linux-amd64"
      sha256 "fa33f6b4583456571c7bc0757b3c57b1410b1a2c0484491582e8becca0a9a7a4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
