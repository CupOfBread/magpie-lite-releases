class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1500/magpie-cli-darwin-arm64"
      sha256 "9057828e02a953cc9ce76a90c3e856fd1998cd73d25863160a2c16442a1e0af0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1500/magpie-cli-darwin-amd64"
      sha256 "c2d25bece1bbb699fd3801c9c2ba0180c73a5de1daa37b27d9ccc46165382a1d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1500/magpie-cli-linux-arm64"
      sha256 "171b70c48ff090b05f000854aad54494e94d7f41e6409cf125e3f6382c9eecbe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1500/magpie-cli-linux-amd64"
      sha256 "fca5f84a5c9c769db0f72927312616aa4dcd1881e60bfea8fd992382aec17aa7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
