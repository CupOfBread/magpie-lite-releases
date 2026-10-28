class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1829/magpie-cli-darwin-arm64"
      sha256 "851c5ea76a42f017875cf0400781766ba3b085f795b5641b8fe544b60595c64c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1829/magpie-cli-darwin-amd64"
      sha256 "d61f34ab48e04351895c9ede82bc54baca2f8e2d961639182b377cc20670cf79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1829/magpie-cli-linux-arm64"
      sha256 "1cd1744b6a120332844c4b51b784ccf657cbc9b377ed800f5b65c566f5bc60aa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1829/magpie-cli-linux-amd64"
      sha256 "3e96ce4655e67ab7bef5f397da3a2721006cd8425f8a4b4ced719e42003c8ee6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
