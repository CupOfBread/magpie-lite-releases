class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1326/magpie-cli-darwin-arm64"
      sha256 "951dd0dc5924f411382379eb077d3331cce54fe3b668e6d1976f5dbff09220eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1326/magpie-cli-darwin-amd64"
      sha256 "be20137c27c2c22b1bfd462aefb4d584a841898b3efdf93b95ee5a9da7ee20cc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1326/magpie-cli-linux-arm64"
      sha256 "4b818fd1c5fa40c20b404f0abff1b00e98b9432bbd3b6e746e2f5c0ae71c23e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1326/magpie-cli-linux-amd64"
      sha256 "737c82fc03ba5a8a2b0f0132e929aeda9a5cef0cf3a563b720dbb44973e78893"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
