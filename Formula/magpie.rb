class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1472/magpie-cli-darwin-arm64"
      sha256 "d681d4acd43944e5831712de169b51f2fe969a4ca990874267a8ded864b94f26"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1472/magpie-cli-darwin-amd64"
      sha256 "2f3f2b5663955d7df45330b711fbd4d173c260fcfbad648c9a7e23131eff3d55"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1472/magpie-cli-linux-arm64"
      sha256 "47537f06492d2f86219b1daf9618d91fa5dc3f460989d4c52e39c344a7607df4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1472/magpie-cli-linux-amd64"
      sha256 "ef53f3122a5a99e86b505cab4e2856bfb00b9447c2a7b6b5a6563198e80c2b38"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
