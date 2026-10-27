class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1696/magpie-cli-darwin-arm64"
      sha256 "1e9f7c2de487ccbc41057e2fcc54f883b070e9cb1e43840194084c9770627368"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1696/magpie-cli-darwin-amd64"
      sha256 "694dcbca1410f7db7ca7f05225ee41165425353fce92f90ac368427a8449d6b1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1696/magpie-cli-linux-arm64"
      sha256 "1ce36e456fe99ce71c74bf89cda6e5253370c6beb3c14d9ad1dcebeceab979f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1696/magpie-cli-linux-amd64"
      sha256 "176aa0ba14c5a42b7c1a6cdc37de299e6fb8516802ba76b1e5fcc3bcb1518399"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
