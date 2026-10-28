class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1788/magpie-cli-darwin-arm64"
      sha256 "8c8f69684857e1c265865d2d30c6537b357bebd9fb6e7e463c3fa43edb286d24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1788/magpie-cli-darwin-amd64"
      sha256 "3c011d32885d07d5aeba269b7fad95f42cddb0b64a70b0110a43d04a28f88f20"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1788/magpie-cli-linux-arm64"
      sha256 "3276bd665df656c5f8808bd20b81becc7a36a81e9c9017acd4a9dc9f051afcc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1788/magpie-cli-linux-amd64"
      sha256 "2d67a1d956f7f80ed4df1fadab82f823ba54d09774212690be124ed7105df1cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
