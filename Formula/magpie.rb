class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1290/magpie-cli-darwin-arm64"
      sha256 "e4b5d54dd0d2f4f54474d56cb54218e6a5a5cf7e4419cabcdabdc6609370182f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1290/magpie-cli-darwin-amd64"
      sha256 "6f65dc4e3e86959f7df22baa587482e8c58f6212597706f83021c89ea53fd1cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1290/magpie-cli-linux-arm64"
      sha256 "dab3f4cbf5bf6ad3ab390e8a1bdfbed54107aaea3f858a527cbe2e4c730e3bf4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1290/magpie-cli-linux-amd64"
      sha256 "87ffad4f1417decbd18e43e6c05f0785e0f9f35466060d7f9782c6e0558de65b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
