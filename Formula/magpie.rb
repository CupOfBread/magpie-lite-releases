class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1758/magpie-cli-darwin-arm64"
      sha256 "2431ab8da6398b355d4dc6152f8dd73d07cbf215c2f657dc56f943eb5cdfa163"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1758/magpie-cli-darwin-amd64"
      sha256 "08afdb495d3cbed230608445ee960295491da551f4c670cd57df20391b6ec246"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1758/magpie-cli-linux-arm64"
      sha256 "9ff1659f29d74f77fb4e146e8597c3070956e2ef60c82a8bf8a2fd4c0ee831af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1758/magpie-cli-linux-amd64"
      sha256 "c09b89d26804da41708d8d27911afac5eb3a41484a9b2ae7bceba331ebad6c5a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
