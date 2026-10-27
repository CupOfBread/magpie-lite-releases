class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1744/magpie-cli-darwin-arm64"
      sha256 "981553e88dced9089f8a7d9996d584e910a3e06f1d34fdc18835d287072ce052"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1744/magpie-cli-darwin-amd64"
      sha256 "6dabf6cd3e16b257f4fe8855fde56a0f2f7b018ae9ed31a5d8e805e7aa9af5d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1744/magpie-cli-linux-arm64"
      sha256 "7e8f58da903510cf6b85c3ee9513d3a02ab36ad993b199a020cd382fc0a2f998"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1744/magpie-cli-linux-amd64"
      sha256 "e3320102aac900ebd2ef61a4fbcd0109d273223f050ae7beb68b8c541e6a7a4f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
