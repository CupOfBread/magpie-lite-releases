class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1455/magpie-cli-darwin-arm64"
      sha256 "6d1768ebf6e55b7978cc56f7894cb02791796cc4f867cf4ac59ae21c88925309"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1455/magpie-cli-darwin-amd64"
      sha256 "4cdc5828a6fa70eafee713149efa78f627d824f6a92d1bc98859b225e8c759a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1455/magpie-cli-linux-arm64"
      sha256 "c1afb7e53e2ad70e869753cb2a13c3ee00e03e3ea0e52ae0bc3a46f80a6f1bac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1455/magpie-cli-linux-amd64"
      sha256 "c91d1d64eac321c39d8b3b6ac5fe0fd41657e3d813000ea4362795d3cd3ff0b8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
