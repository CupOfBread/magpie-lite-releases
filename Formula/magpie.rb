class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1629/magpie-cli-darwin-arm64"
      sha256 "cf2de1c8dadb549f64d18242a5a67db31931adfe73e8ab52f85845fa17dabc39"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1629/magpie-cli-darwin-amd64"
      sha256 "5bfa3891cb1704270570b7ccc9ec1ab84ec4805d0b65b656d71285e647ba5c0d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1629/magpie-cli-linux-arm64"
      sha256 "a207c637ae70f52038118684068298e393c449be27d20c98e854584d5379cad8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1629/magpie-cli-linux-amd64"
      sha256 "6f051233447922b3d7eafbd91ecf58c91cea0dbe982ba2cf2bc961d2a5c7d486"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
