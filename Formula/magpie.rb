class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1610/magpie-cli-darwin-arm64"
      sha256 "fd23c9ce85913721c541e65a80575bfe1882993cbef8c1d7d9a4300d3b875c76"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1610/magpie-cli-darwin-amd64"
      sha256 "88348d971fd05d67a76ecfdf49bd9123ea97bf11ed68c4810e55a44b4863fee4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1610/magpie-cli-linux-arm64"
      sha256 "3ef43d36e591e05b060c51eed1dac046d8e86f7624f96ed531cb8481bc6029e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1610/magpie-cli-linux-amd64"
      sha256 "db00a237fc0f8310f89cd74d6ef1c997bc37df240beeaba7c7bdc54f61f22fba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
