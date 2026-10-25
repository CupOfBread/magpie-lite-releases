class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1520/magpie-cli-darwin-arm64"
      sha256 "95cd5151c285ba5efe1d8dd1b45edd10a81be7f47e090be824342ed27dfd72f4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1520/magpie-cli-darwin-amd64"
      sha256 "82e273279142ab5852298105ceb7b856f04898f1bccca53288038b21f6e08ca6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1520/magpie-cli-linux-arm64"
      sha256 "37880c179a6f6402f5e6d5a1f2d05c38de7256ddf0e1162072ce67772026d541"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1520/magpie-cli-linux-amd64"
      sha256 "bf8c13fcdca9e8b1ba3d0aa489cffe14a0e2152c49ab98f41ca1a30b84dbe218"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
