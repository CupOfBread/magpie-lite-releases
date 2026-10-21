class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1309/magpie-cli-darwin-arm64"
      sha256 "b96210658f3dca3e70be607bb5a0e70f93e3e38690e22d16f2b70bc18140b5c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1309/magpie-cli-darwin-amd64"
      sha256 "6314b358a87b3effb8e8f83bb96de967817d80609cb36f9618ff09d834594453"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1309/magpie-cli-linux-arm64"
      sha256 "2caec4f5625642ca755fe8c0a05a3d5943cd9f992e5da144bb9d49d7c37623ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1309/magpie-cli-linux-amd64"
      sha256 "7d116302c1d900e67455e8c605aaf08f990db1e32d346d1aa28859c7456fad6c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
