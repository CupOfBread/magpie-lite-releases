class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1303/magpie-cli-darwin-arm64"
      sha256 "a749b4fb890b1e9b5da70f27ff9f8e4fad292a4e3e4ff6a1606c94040b28d68a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1303/magpie-cli-darwin-amd64"
      sha256 "c888f311c7d1d12833ddbbd570455bf3c5e2c244b0b0025a35900c7b8a5610b8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1303/magpie-cli-linux-arm64"
      sha256 "641e1828bb933ecc0786f4fea39ca4eb47d43dd565376a430152b861eb5ef1e1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1303/magpie-cli-linux-amd64"
      sha256 "60c4632cbfd66f09d3375148077e08f3c65fbd1aa53b384ee9c09bf36809d5a0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
