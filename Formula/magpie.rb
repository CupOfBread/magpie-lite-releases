class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1287/magpie-cli-darwin-arm64"
      sha256 "d397da65f3ae107907d6f2374e9e20985140bde4c2475b0841b187be32817843"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1287/magpie-cli-darwin-amd64"
      sha256 "c21db4f42cfc271dc33ae593a9c30541e2c62a2f08e615341312569b91f20533"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1287/magpie-cli-linux-arm64"
      sha256 "932725c59fe66de355084aaa62a468ed65ad782b1ba00eab324d8274fa256a25"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1287/magpie-cli-linux-amd64"
      sha256 "c29a6fe459cf28a5406032e7d3b45afe7a4ee8350ac9c92abd28ea86e0c0022e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
