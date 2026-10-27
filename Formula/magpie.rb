class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1700/magpie-cli-darwin-arm64"
      sha256 "62b2d27acf46a61ef89ac0a5e8593c80b7d924ec0c168e83aa704f7daf4ae686"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1700/magpie-cli-darwin-amd64"
      sha256 "0795e73721aa7477f08e605ebae44d16e5d776c9a7a4fa4492b3700b44499643"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1700/magpie-cli-linux-arm64"
      sha256 "88f811115f9b15277df5caafb038a97190e8560502f3935c9f50aa215ee8f2c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1700/magpie-cli-linux-amd64"
      sha256 "7f44fc9755d1ef532d184d06882abaa4373664c8cdf7734bef8da5e40c7f8e85"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
