class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1434/magpie-cli-darwin-arm64"
      sha256 "96582f284854825efe8bb16f95bf8c2a88341f03583a5729d05f67964c804397"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1434/magpie-cli-darwin-amd64"
      sha256 "0157385ad919d47638fd3f6b39b3bdae066b5ebc0f9b9d4216213e61c5f268a1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1434/magpie-cli-linux-arm64"
      sha256 "69be8b8aeffee109c528f28f0917eaaa034263348c78a3ac5b969e2deba65549"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1434/magpie-cli-linux-amd64"
      sha256 "2ea3a1bac4ab52fe23a6bb50dbb4343b8398a10a5c31e8ba47bb5357c53b59bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
