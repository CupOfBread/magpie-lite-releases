class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1605/magpie-cli-darwin-arm64"
      sha256 "e6e629dc67ff59894a7f122e755679b69a8041ec97aa2b17f9093bbb72b891a3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1605/magpie-cli-darwin-amd64"
      sha256 "4fb39e5798b01f89c90d405b06583158b237901b61a86ee8e24805f35a3f4b0c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1605/magpie-cli-linux-arm64"
      sha256 "72df274d9a1adf351c751d2589d61ca3ad2855670c7fc6310197598669d0c90c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1605/magpie-cli-linux-amd64"
      sha256 "dc222911e4fd821b7d51f67fcb3c7bba6b0699ba863de444aeeb238be2dd4c56"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
