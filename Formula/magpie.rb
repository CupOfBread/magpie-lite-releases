class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1357/magpie-cli-darwin-arm64"
      sha256 "bf7371ba240d3652f2b1c414b3af5fea2d8310dc4e0db55f4656ecf94db54f0b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1357/magpie-cli-darwin-amd64"
      sha256 "bc72a5f0d4f8ff2a64c68a64cc0acd2dbbefe4420a1e1ea3cd3cfe2c01373e78"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1357/magpie-cli-linux-arm64"
      sha256 "b8efaed540f046387e092e9faa156cd9d4432816039e6e7e2827bbcd1c3e4023"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1357/magpie-cli-linux-amd64"
      sha256 "99097d037a13c545c11b2001dcd9d2c01dd2cbf74695c9da095e0f23fd54409c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
