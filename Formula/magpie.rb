class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1322/magpie-cli-darwin-arm64"
      sha256 "cc68d3e3e3684a061d6b2d8638bc9baae30e2429e149a9c96c5214fccddc0128"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1322/magpie-cli-darwin-amd64"
      sha256 "ab360be9ea0ec9a640710bce77aa29f649d8851097dc5b72ba02876bfe2b4024"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1322/magpie-cli-linux-arm64"
      sha256 "d81ac9b918e15973e4c773224d68a6aa44bed32efc1cd019dce255244726366b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1322/magpie-cli-linux-amd64"
      sha256 "823ed43ac84182d2810d36516093506a2962f39f4593253f6318239a43c6fff1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
