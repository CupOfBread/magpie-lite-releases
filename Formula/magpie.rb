class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1342/magpie-cli-darwin-arm64"
      sha256 "f8add3c0f3d3a66af747f8f14d9abb696998b1016834ba1e341e9567eb5c01f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1342/magpie-cli-darwin-amd64"
      sha256 "64e440754c1cef2ca985b694632a0fa1987e814c877201897ba924c91bb5ca8c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1342/magpie-cli-linux-arm64"
      sha256 "3f5e3742accfa2bc45694e503ce4533476317016a4a8e53320baf2fd05888034"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1342/magpie-cli-linux-amd64"
      sha256 "ed35f80e232002172715da05d4f434297d07a45f8911ce5833671969a2fd284f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
