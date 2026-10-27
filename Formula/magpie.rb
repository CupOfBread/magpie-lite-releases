class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1677/magpie-cli-darwin-arm64"
      sha256 "98959dced244e1394d42c4c04bca693b19ed207f8d2a26d2aca555b4c23fa942"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1677/magpie-cli-darwin-amd64"
      sha256 "ffd270c31280a2aae000b1a237ebc31ec63258c19d502334e58a4ba1370139bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1677/magpie-cli-linux-arm64"
      sha256 "7c0a8bb6bb2f71c218512d7bb741807dc5c01e40517262434e4ba2778d31f6cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1677/magpie-cli-linux-amd64"
      sha256 "104e8caedbae1fd9378c5253f9a96af2cee18d57d9fdb8759bce48d13038fabf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
