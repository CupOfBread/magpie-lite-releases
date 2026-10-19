class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1294/magpie-cli-darwin-arm64"
      sha256 "3e53580930d3e0abc67e68d4616d9ea2da51198906d9396db132635084591f97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1294/magpie-cli-darwin-amd64"
      sha256 "2bfc6b671f33b3a9573149002b045055ca2cb681e0e1691332b3ff16250079e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1294/magpie-cli-linux-arm64"
      sha256 "b2e26d9ad4fc29edf1cd034d13ac73a263bba4a982b63f5dbd9c14d4a8334f8b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1294/magpie-cli-linux-amd64"
      sha256 "679ea74d5306405ae040c41012c167c4edd351d54f94f90fc3179649e0987e67"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
