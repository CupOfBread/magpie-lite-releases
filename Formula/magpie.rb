class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1530/magpie-cli-darwin-arm64"
      sha256 "d423e0ed48b51fdcd7ea1306fba0fac4e4982ed7c81c174b8e8715c83f41deb1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1530/magpie-cli-darwin-amd64"
      sha256 "acfcca7694588d9a18a124d5e503cc3be7e8d54aaaebc82fdb135974b6e77c7b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1530/magpie-cli-linux-arm64"
      sha256 "74ac58df365b2a7043c957d92895c23480eca6d87645c837c92635ab8cc38f1d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1530/magpie-cli-linux-amd64"
      sha256 "3d74e98dd946f998b0e01c49ac8226377d2d8579f1f15d34d5b242bee7b6b060"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
