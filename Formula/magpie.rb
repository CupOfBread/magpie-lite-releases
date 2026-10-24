class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1399/magpie-cli-darwin-arm64"
      sha256 "b78682b3e35e1ed27aac023fec29a06ac548f2d84cf55cb72fb82d119dfa7ade"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1399/magpie-cli-darwin-amd64"
      sha256 "35335cd2c769054a35cba92a04660f1f3ce58807cf04edb8ced63dad7e6d324c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1399/magpie-cli-linux-arm64"
      sha256 "c4e34be7b2ac787d6153d84326925ff4f666de94c8082769df0c426623b532ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1399/magpie-cli-linux-amd64"
      sha256 "64239900e45034b1ce6f25f961a7aa982bc43001cdaf88310cf58d1fe4a7a6c2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
