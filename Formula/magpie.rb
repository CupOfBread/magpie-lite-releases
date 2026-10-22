class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1325/magpie-cli-darwin-arm64"
      sha256 "9b850dcd4870b7874c96e7be09ebfd63f41eedd10fb0920b88c410ed62d49daa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1325/magpie-cli-darwin-amd64"
      sha256 "25f6ccb2ecce745a2651a565392d8fb041df43d37a6a698147c86e8f27571672"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1325/magpie-cli-linux-arm64"
      sha256 "0d3dbc6702351ee4e7712dfa778af33b1ce51910db1d505e50fde0b007203685"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1325/magpie-cli-linux-amd64"
      sha256 "8c88bdd0fc6ac3349150e56292e2c352a40d485cf97f5df8459586339d690030"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
