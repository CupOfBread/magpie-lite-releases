class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1705/magpie-cli-darwin-arm64"
      sha256 "081cfeae50566ad598178002d27cb4bab062c14dc39eca62e2b3a84f3e642669"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1705/magpie-cli-darwin-amd64"
      sha256 "44f25412284bcc88b57d6f6dffd38c841636802e76a570c3252de97374588f6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1705/magpie-cli-linux-arm64"
      sha256 "6fd1134fe51fbc921417025bc6ab88eda57d7b48fee75285500050e5cda9b771"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1705/magpie-cli-linux-amd64"
      sha256 "53caf9d14c3595b1a58cd5096679a4f776338154c096e729233f38e9f0a6777f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
