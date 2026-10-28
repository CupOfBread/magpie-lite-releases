class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1814/magpie-cli-darwin-arm64"
      sha256 "65b007aed26d7affa3957fd1455a1c1cbb08f81bee00b9559edb8062dd23eda8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1814/magpie-cli-darwin-amd64"
      sha256 "263414b7db5c765143433fd4ddcac8a333da4101789f3a83c8ad38c97a50445e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1814/magpie-cli-linux-arm64"
      sha256 "c1bd0c670553dbe839dfe2418c9b93789cde697be1ab1c37a3df8d9062c46cb4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1814/magpie-cli-linux-amd64"
      sha256 "06fd7ddf5c5739edc9435d5875a2e01a0a30d26284d71249d0f6af5dd5b7a1b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
