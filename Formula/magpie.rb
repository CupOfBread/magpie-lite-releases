class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1593/magpie-cli-darwin-arm64"
      sha256 "e5927b6c46884f50d019b62b1cbf61909e5efb1d308181f3019e99b4498b99d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1593/magpie-cli-darwin-amd64"
      sha256 "ea72db2d9a1080a387ac5aa2e58cd0e232d5aeabe9fcfba72f6c64a802b933f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1593/magpie-cli-linux-arm64"
      sha256 "94f179fb50cd9499b8c07c6c908e5cab6c2792e901089e7b1398c02433193d85"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1593/magpie-cli-linux-amd64"
      sha256 "48866195b12e78fbaa6cf085d668f326d3fef9123867633e88d4fb66cb90f820"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
