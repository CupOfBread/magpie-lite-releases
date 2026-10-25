class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1547/magpie-cli-darwin-arm64"
      sha256 "cf689c957801d2408eab24b831e2e2593c45a0d7c3def7d82be85cf8734f65c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1547/magpie-cli-darwin-amd64"
      sha256 "021b7394d05c68ff035ce80917ade7f3776b2addcc58211308bfab124b00fc20"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1547/magpie-cli-linux-arm64"
      sha256 "24dba69fc03a09d70a7b7ad361377b9db7026706c164ec7d28a8d1dbb605088e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1547/magpie-cli-linux-amd64"
      sha256 "dd0063341f7e867f3f07d5710d317876a65335af4c840411406ebd64a7a5a2ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
