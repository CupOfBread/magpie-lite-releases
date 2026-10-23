class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1359/magpie-cli-darwin-arm64"
      sha256 "8b08ebf0df19e227b571d65e3754ec7f730b99401b6265c312e0e1ba2a6ca2a5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1359/magpie-cli-darwin-amd64"
      sha256 "40ae56f8903d9c021792275ed5bb7a19cc950826c9bc17a04d05db40fad2e292"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1359/magpie-cli-linux-arm64"
      sha256 "bdb7d01ac76cd686d81a707ca989486a198da3b4256e468e4f56418a547e1615"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1359/magpie-cli-linux-amd64"
      sha256 "a65853beb09fbcfaf9d54a8be42ece2ce3e1fe4f47000d7d9a53a5dac7859634"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
