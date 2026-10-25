class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1556/magpie-cli-darwin-arm64"
      sha256 "cf0303a9d57ef3631db7532e00e017c24bf2946ed31ec2b78a8f83aa30d4accf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1556/magpie-cli-darwin-amd64"
      sha256 "09c92ab9a34c6c7da7e320735afc22c061f81d25cc281a2c6c79f1a5d454838f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1556/magpie-cli-linux-arm64"
      sha256 "b3b177d27ed8796758252f78943aa841970706ca43caabffb24453f6d43a7da4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1556/magpie-cli-linux-amd64"
      sha256 "c23e18582a50f8bf9f2bac8a72670ab8d128d2c0af8d1ea798a8e868a8bc4e4d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
