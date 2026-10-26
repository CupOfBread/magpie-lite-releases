class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1652/magpie-cli-darwin-arm64"
      sha256 "e1b9f1903a96d1274cd9eb6c2ba5a587083d3aebf8b9c383a28a570b95fa7e0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1652/magpie-cli-darwin-amd64"
      sha256 "e33ccf0a39a99ef19de4ea5451e76c2aa3e6bdf35cbd02d497f5b89a192cb42a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1652/magpie-cli-linux-arm64"
      sha256 "61d69e310a3441662faa7bc17da7d3742ac08422f8b7bb93b66c3b78330caa65"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1652/magpie-cli-linux-amd64"
      sha256 "e9eaa7c09ab1a609eaf033a1bbc1250db137013518d54c9a8fe64e028c9fa8d9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
