class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1312/magpie-cli-darwin-arm64"
      sha256 "bada2a578721130ab20ba756b5d6d333487bd02814253e64b015d17505ec2ee6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1312/magpie-cli-darwin-amd64"
      sha256 "466084a3fa841250ae8c7b725b5fb82acc4633968601113748e5a396a4ab5c4e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1312/magpie-cli-linux-arm64"
      sha256 "d5e0b85f6e470cc3f49fb0653ee92e4e85c52e39647bdb66099eec6832780dd2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1312/magpie-cli-linux-amd64"
      sha256 "dc4f0c7da1cc6e502d3586f968cf84a157e12ae2cf75cf5e318052949f9dcd79"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
