class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1288/magpie-cli-darwin-arm64"
      sha256 "28d15fdc1fd68daaa149b3965500600de691c713ddb65cc258f999ab3baffc55"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1288/magpie-cli-darwin-amd64"
      sha256 "0da5a5637db1ae7cb3affb5dfa4865bb66ba717338aae47f7b2a730222b7f836"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1288/magpie-cli-linux-arm64"
      sha256 "4a3d52b5bf8217d22ce996a176fbc73955b5b2e0ded21e9714b3d94e4699aecc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1288/magpie-cli-linux-amd64"
      sha256 "3f9da5c3c835f54d88b83dfa82e28c7c99ff9580b45a68646986e7ef88979f88"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
