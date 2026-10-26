class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1598/magpie-cli-darwin-arm64"
      sha256 "7d35636038e23b3fbe740ee068d6ce7724a3bd08a05ec39e601963b786f57b67"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1598/magpie-cli-darwin-amd64"
      sha256 "577f23ef5ed75e12778582f2582b739c988d0ddf4134caf8d451982d4ce3638a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1598/magpie-cli-linux-arm64"
      sha256 "a823c3e69274d58a6c733fbe4c6bceaf5013156f762993015d1f74ee91b2e45e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1598/magpie-cli-linux-amd64"
      sha256 "c723d62ca110b4d901fb438fe8fe2ba725600380e788cd5ddb8e97e33c298695"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
