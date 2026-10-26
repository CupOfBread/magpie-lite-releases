class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1649/magpie-cli-darwin-arm64"
      sha256 "546ff2dc5679d50c3f9edb296f0d57ae8d050e31057f2b4c9111fd68c1172ac7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1649/magpie-cli-darwin-amd64"
      sha256 "055525fea5cdd75f3ea4f65206ccb246c5b690e725497cd5233c894422f8e549"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1649/magpie-cli-linux-arm64"
      sha256 "efa8c787bf4d9925d529d443ad3eac8d292acd3729bf6ad4807cddfd71061a0d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1649/magpie-cli-linux-amd64"
      sha256 "e4483323639505c23d2aabe96d954cde311f071d1a05f09bfc556ffce6bc0f9a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
