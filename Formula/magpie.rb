class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1469/magpie-cli-darwin-arm64"
      sha256 "77ac7ed1136413f84d1bb38f9e766fd335db1878f8114dde8fe2c83caaf697c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1469/magpie-cli-darwin-amd64"
      sha256 "3045c6886c5e5481067147b03a8a4b9056e28a6acabf405603f3ee579a903e8f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1469/magpie-cli-linux-arm64"
      sha256 "b6e5a19c7b1b04a8995de69e7d6d16d7760fa1ef3cf84906fa4462ba0af27a6e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1469/magpie-cli-linux-amd64"
      sha256 "3453fcc53e825babc056eedb5c8af5b0fb734dbb40ce06c7c5982e41f2e0a541"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
