class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1710/magpie-cli-darwin-arm64"
      sha256 "eb9d1b536ab65a5fbd70b956585f2872225c8c474c9cbdbfb7152c356b8ed2ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1710/magpie-cli-darwin-amd64"
      sha256 "61bc35c380eaca8bc77e1b89aa1fff5a3e11a16aeaa242a8f4e6b86748866e51"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1710/magpie-cli-linux-arm64"
      sha256 "619e9bf989a7d1473f1285c576746d22b13f5c0f618a855c6df160a170bb9d78"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1710/magpie-cli-linux-amd64"
      sha256 "74cd2103090ea338fb2b70bd0b6f337247dee15497f203a53b41a5e0ea6a19d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
