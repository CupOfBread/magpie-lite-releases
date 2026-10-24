class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1454/magpie-cli-darwin-arm64"
      sha256 "0545a5ddc95a36108b0a9fb918072b0fbbe6e5c1db62039988394016f53a6edc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1454/magpie-cli-darwin-amd64"
      sha256 "8cfb80c0c6b550c85e07a653916db864ee3cc02bdce2c6fd16e5d48c316c3c5e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1454/magpie-cli-linux-arm64"
      sha256 "7f6f2f29c0cec632775516b6f5e415469ebf781dde045b79ea6218cd549adade"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1454/magpie-cli-linux-amd64"
      sha256 "a2ca3aace0bfb5e12c7a12655e359b41f9212c506501c063d392986536b060c2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
