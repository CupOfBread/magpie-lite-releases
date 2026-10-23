class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1347/magpie-cli-darwin-arm64"
      sha256 "1ad6c0a7fae3266381e04b6afa0bcad3d803dfa2de4df1f916233f5c6dad5f99"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1347/magpie-cli-darwin-amd64"
      sha256 "9f8b2353f47c732642bb91b319c4e0e17797c0f5632472acc4f1724eae4abb28"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1347/magpie-cli-linux-arm64"
      sha256 "8bc75887566c92f896f12a6897bd43f833cacad70f5d7ff153c5ca9c0ab7a7cf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1347/magpie-cli-linux-amd64"
      sha256 "3c68fc9f96687ac255a73af05bb24b493f3234b7ef741906a4c942d6606b4e99"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
