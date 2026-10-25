class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1470/magpie-cli-darwin-arm64"
      sha256 "30490685bc5e76b9b6e3b7196584eb66ad651b8a2f617641afab1798f40722cc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1470/magpie-cli-darwin-amd64"
      sha256 "998c5217e14e7c436f81b0be83dc75fe6798507d15905684a7a5d3f4d32d604c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1470/magpie-cli-linux-arm64"
      sha256 "50bd7f2e1eb1e9328649ecfa73dc4c218118365d4f3d4a7e0c2353d59f637fbc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1470/magpie-cli-linux-amd64"
      sha256 "3f18ffdf3398d18359b3053a180e25742fbf2dac7541f2de39f669bfaa07c0c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
