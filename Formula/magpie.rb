class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1374/magpie-cli-darwin-arm64"
      sha256 "343a054fb5a68a796bfaab9c17564cd9cae880548b4429601e18482c876aa78c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1374/magpie-cli-darwin-amd64"
      sha256 "5694884c03b02f9d3c091e90b9eb48f7381c8e6a0cb4d64488806d8f05df2696"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1374/magpie-cli-linux-arm64"
      sha256 "eb8a37eaa997dc3f75d70b0637e078f77263e20a5ae21e5d629f8a5a649f65e0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1374/magpie-cli-linux-amd64"
      sha256 "aa9a2faf1e753291d89ae36599f806841e13cfc4a273f8f8f4cd3d955ba22772"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
