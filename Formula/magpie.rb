class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1663/magpie-cli-darwin-arm64"
      sha256 "0a52f6d0b11930500056d11bf34c4691d21773a3db99d9e142632dfa06d27b80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1663/magpie-cli-darwin-amd64"
      sha256 "cd843b0665ba18787e69b76bdfd6846c5464decfd1f4a1d952d075f0f97a87bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1663/magpie-cli-linux-arm64"
      sha256 "b647e4f829751202970be005bd66c1d8c1390c4ec045e38ea5684e6d5e6b9d58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1663/magpie-cli-linux-amd64"
      sha256 "c2743d338cd2593274de78ca75733042b7e27148c21d401244cbc16a2e3dd47b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
