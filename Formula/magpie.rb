class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1376/magpie-cli-darwin-arm64"
      sha256 "b544181aacbc852720c64a5d172d4d57a9abd017f323de7cb15822d12a885752"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1376/magpie-cli-darwin-amd64"
      sha256 "4c9bde05b4500b69f0d7c552f96914743c6d8ac6c58b2180240fd3b09617ee94"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1376/magpie-cli-linux-arm64"
      sha256 "e2de4348afcaefe74d0cb5542fcd11199df6b861fef36b5f1ccd474e9d6208c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1376/magpie-cli-linux-amd64"
      sha256 "dec5be1f5b5b059fe881e15c7bd3b07cdf140e4667809deafdf2f785e7c56ea4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
