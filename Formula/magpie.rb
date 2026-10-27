class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1722/magpie-cli-darwin-arm64"
      sha256 "de4489d42b5f47e6b3897a7b347ad7b1958a6cd6faf01cf257dd2040a739a6f1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1722/magpie-cli-darwin-amd64"
      sha256 "5b930f8df87d2931b300ca37aeb0b1792d229ae733047f88b901951901a60bea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1722/magpie-cli-linux-arm64"
      sha256 "134ae150f4a79eae2257f769fe11a5bf1d8500e9ffc10f5c4852b9ef039f5f52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1722/magpie-cli-linux-amd64"
      sha256 "9f5df9ff4fba40f97002bd419c309638a909c482dace892b7fe5ca8436312870"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
