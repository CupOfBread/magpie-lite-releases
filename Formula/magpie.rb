class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1812/magpie-cli-darwin-arm64"
      sha256 "cb9a417c95bc7dfa22f8e4386d55bc399868eeb53ec1d1057ec8f23d9e21adf1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1812/magpie-cli-darwin-amd64"
      sha256 "9d8b9fdb6cba398167376a005ac3348d976c769bbfdbfd86bb196dcdf1c3afd9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1812/magpie-cli-linux-arm64"
      sha256 "46cccc05571bdbbc5ddbd2836245d3707f56be45617a7335052dea4426684829"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1812/magpie-cli-linux-amd64"
      sha256 "703cf44b0bcb758e4a8cd1b6793237091854886fdbeaf1a6527a9fe1e537ba68"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
