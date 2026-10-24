class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1467/magpie-cli-darwin-arm64"
      sha256 "9adda62f3627e1c58a2799941df79111ca00679fd1b3754dfe2999f82bc68ebf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1467/magpie-cli-darwin-amd64"
      sha256 "82307cfe1b24567843ed96eda0cea883e0529d2149925fc6d93431faffbd122b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1467/magpie-cli-linux-arm64"
      sha256 "ef72c56891acc18ed1b49b4d1e0c07feabaa9fe81a65857c94b286e0fb8de6d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1467/magpie-cli-linux-amd64"
      sha256 "93e56696708e3f1db0ad16e080c6f57caf146484535d2df788a7f941bf939219"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
