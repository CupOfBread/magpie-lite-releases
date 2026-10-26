class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1560/magpie-cli-darwin-arm64"
      sha256 "e1f1f107f7ec36008e7081936f50753b32feae9179c0ae0ff42dfe647583f323"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1560/magpie-cli-darwin-amd64"
      sha256 "bd9c325612cb8afcb45ba89c4766a70123e52d18acd6bb44b646eaaf9532e811"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1560/magpie-cli-linux-arm64"
      sha256 "d0daa1f5a6db97caf1589fcc0a206ebd1b8c59c9d28a51b5d403921391b2b500"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1560/magpie-cli-linux-amd64"
      sha256 "e189b9f84c4bed638138aa792d36d2031f85bd0ff3d5949b961b130fd10439d9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
