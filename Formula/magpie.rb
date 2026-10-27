class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1692/magpie-cli-darwin-arm64"
      sha256 "84645172b340c3f18fb0cf47c6638d211759d0dd9d360fe80ec8ec5d4565d111"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1692/magpie-cli-darwin-amd64"
      sha256 "513917b61bda6cd874203c9746413f2d4b9e77fe396be523c826e7a1df915886"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1692/magpie-cli-linux-arm64"
      sha256 "7a760d316b9d7aa2b273edbc0981f8e52a908ce0891dfda139c40aed0e7d3c30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1692/magpie-cli-linux-amd64"
      sha256 "968d75a54d0bff32bcdfc533a284188e987dac3033ca71b7bb7e5afd05df6959"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
