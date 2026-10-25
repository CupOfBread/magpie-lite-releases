class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1558/magpie-cli-darwin-arm64"
      sha256 "266bab987cd8b87c5a6c2fe46452d12e621db05c7265dbbdd0caf3781824757a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1558/magpie-cli-darwin-amd64"
      sha256 "e8b2f24c2ea7a0232324e606916b96730dd7902685169dfb354d9fa5082675bb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1558/magpie-cli-linux-arm64"
      sha256 "d95c56a92ad03ba5d89604057075ad9a8203a35f21ebd2903bd228d7def0d155"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1558/magpie-cli-linux-amd64"
      sha256 "eac0f71d1e2df1b0c4e7a00d456ce5e8344f2f07c30fe02d3a4df6eb23e865de"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
