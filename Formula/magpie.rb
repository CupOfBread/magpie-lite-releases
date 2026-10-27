class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1709/magpie-cli-darwin-arm64"
      sha256 "de20bee2ff552d7a5dece37d98db480c9d72f2a8f4eabc220de9e72c491c49be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1709/magpie-cli-darwin-amd64"
      sha256 "9ef97072f4a0c33b3af708a701ef567241612c1751c80cc9fac93d013a3f3c71"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1709/magpie-cli-linux-arm64"
      sha256 "b66dd17bd815f114a23ba1c591b16e7ade49ad3f5d68b1cda907038596a03ead"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1709/magpie-cli-linux-amd64"
      sha256 "f9f9f9855e91bc54ccfe661bf8ac8085bff57b2f54c364af48f934c1f1794b1e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
