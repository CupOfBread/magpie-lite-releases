class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1701/magpie-cli-darwin-arm64"
      sha256 "c992e044226fb46ac0f3945deeef69d560a3c865d2fb58700edd17306a287229"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1701/magpie-cli-darwin-amd64"
      sha256 "f73f847ca8eeaeebf34af7a8967795e7c4ae2c3e18189f668c0510b494db85d7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1701/magpie-cli-linux-arm64"
      sha256 "aeb69dcab296c7e562600ef08cdfbf117d7e74cae981e502b1de2fdb504666f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1701/magpie-cli-linux-amd64"
      sha256 "52592aceb896bb92aa21569c75ffbfbcb07734ab34d43f4eb08d11888da29e52"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
