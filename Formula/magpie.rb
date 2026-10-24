class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1414/magpie-cli-darwin-arm64"
      sha256 "94a71fe74381174928d693718807bc665e6faede9e29a6b2b9c919adfb785b47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1414/magpie-cli-darwin-amd64"
      sha256 "f7c8740e0cdbfa3cdc429f8fc434177b8bca8305f571358138f201a6c9bfd65a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1414/magpie-cli-linux-arm64"
      sha256 "a0a582f6fffb18828d142a7bda0d89fbf1b89e6b1232c7890d74981d7aa5fc5d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1414/magpie-cli-linux-amd64"
      sha256 "528aac108f3558b291c4287aad14036f0c80ab2517f3bd63b22007d984ed5603"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
