class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1595/magpie-cli-darwin-arm64"
      sha256 "cb311d09dadfd345d43941d6077a8986de1620792aa783f015c36ba3c241dc82"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1595/magpie-cli-darwin-amd64"
      sha256 "294f505b32e4a233cc45d9f7f5664b0bda4ba86206eee22ec9fb3e9ea648762f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1595/magpie-cli-linux-arm64"
      sha256 "3022e0e052ff26359ba6de6cfcf5be72973dc99554347d9ec79fd618ebb603ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1595/magpie-cli-linux-amd64"
      sha256 "56d889b6a4c74ec45ea0f27ce9d36f7c38b3ed525f16c98ed83de9afb4acbe01"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
