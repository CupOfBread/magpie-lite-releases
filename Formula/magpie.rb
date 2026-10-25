class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1488/magpie-cli-darwin-arm64"
      sha256 "b766d1d6d211d981f59e05658c392e5fee4a35e520d626ef55fcc73ef1c12e19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1488/magpie-cli-darwin-amd64"
      sha256 "18334035569de0083ce22c5012c2e0a2573f31b4048484e49bd73db612051230"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1488/magpie-cli-linux-arm64"
      sha256 "6d52a6f300c50a63f077bac2143c00f6810585f7e3e67bf20a51c4ade3594eef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1488/magpie-cli-linux-amd64"
      sha256 "af0ef2d34f40dc30ab670f5b86f28623d5402f041cc9d29fa8cb344387b836f6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
