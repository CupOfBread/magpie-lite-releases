class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1307/magpie-cli-darwin-arm64"
      sha256 "c4a67b9e4aadf7f1012418d42d32e67ab7a48a96db695310dd9104fd6d66ee73"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1307/magpie-cli-darwin-amd64"
      sha256 "353e9da88a0fc40654623584b41dae38b8581ab8a18d910868b8c23ed4f3a2f6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1307/magpie-cli-linux-arm64"
      sha256 "507a8c5786b9e20d7cd7407e68de9bdef7073ac28bf46390c1e88760c11e0bce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1307/magpie-cli-linux-amd64"
      sha256 "5248801e40fb70db6df29ee32b3fb788cdd411c619ac5aa3bad234df928f5104"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
