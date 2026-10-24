class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1466/magpie-cli-darwin-arm64"
      sha256 "89cfc88cc884ad7bef3efa504c3998b900a30d98c1911a6ce92aee3462cf393c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1466/magpie-cli-darwin-amd64"
      sha256 "53d93ad36509ffc8f214d9336111323561f5396668a5e45f1e2ac253fcf512dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1466/magpie-cli-linux-arm64"
      sha256 "c48f247bc04b5a6f5b11a90818ef4978d07d96f05e9c2ed2f86e7adec7589490"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1466/magpie-cli-linux-amd64"
      sha256 "ab40b790ea6dfd5d63d744b6100f8f90821a4e38d82400762439cb9c33ea901b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
