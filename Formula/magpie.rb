class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1476/magpie-cli-darwin-arm64"
      sha256 "2f24c5cf0df18b69e9d17a06db06ea78c9fc45db0618a6297107d8f347106f00"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1476/magpie-cli-darwin-amd64"
      sha256 "9272b9ec70bce7a7d418cad5e5dc7da638641c5ca8f18f47497d2e5647e08162"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1476/magpie-cli-linux-arm64"
      sha256 "a2e0bac8ae2686cfa409c4ab8363b1fbee0b51fd857ccba34a4a96b7d37b90e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1476/magpie-cli-linux-amd64"
      sha256 "aba698e1706c97e060670295feb4ed7a4d1c7941dea2ebeb58e8ee950e15c9db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
