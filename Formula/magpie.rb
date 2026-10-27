class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1690/magpie-cli-darwin-arm64"
      sha256 "09728ff100fd4387596e3ebff5167445d3f260d1b0582548a57925ce8362866d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1690/magpie-cli-darwin-amd64"
      sha256 "3cf53518bcb2591ea35e33c5a841f4b999faeb4b8b4a35b6b5ff50f3289ebd75"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1690/magpie-cli-linux-arm64"
      sha256 "3bbf6dcd4b0c3108a9216e637fe7244beca4c3e476a411f356a4263110668226"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1690/magpie-cli-linux-amd64"
      sha256 "d2760c0acdcaab8dc99332ace2aef8a76895c46e506f31197bc67317f834b800"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
