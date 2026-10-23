class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1328/magpie-cli-darwin-arm64"
      sha256 "b99a5b101ed26fdc790bc2365cc7c7d9282bd282f87f0ac858154947db09635c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1328/magpie-cli-darwin-amd64"
      sha256 "28a59d95467124396bfb8feb5507c8447ba3a57944484155afcdd8d49a49a7a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1328/magpie-cli-linux-arm64"
      sha256 "6ab6f6f6dbf63a15bb123dda6311cd82462b83f4137fa39bcb21152bc2bfa5b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1328/magpie-cli-linux-amd64"
      sha256 "79f7909c1acb1cfe5ca7a6dffda0af83be015811793bc8aad8c5c91f72178698"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
