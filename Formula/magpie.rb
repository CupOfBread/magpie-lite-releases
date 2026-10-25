class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1485/magpie-cli-darwin-arm64"
      sha256 "efb1d332c844f279d0248019fc6a67f77c6f3aaf8e5702c453a22317b051a265"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1485/magpie-cli-darwin-amd64"
      sha256 "f9a94e4d391a7306a480ce34305b3ddfc83d298cc8840f05d56caebd216e6a44"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1485/magpie-cli-linux-arm64"
      sha256 "e1d7af75d33a8d176ee8e723e68f221f70a24121ecc6fe77ed69d2bf45abc480"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1485/magpie-cli-linux-amd64"
      sha256 "a8183c5fe78b9d8c1068e3592f652d049c6ce882fe7478c4ee023556917d3990"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
