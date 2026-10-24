class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1430/magpie-cli-darwin-arm64"
      sha256 "dda4f5fff381b36af6111ec0bf599115419b6fb5f665355aa3f6faa11857a5f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1430/magpie-cli-darwin-amd64"
      sha256 "98e86d23cc1d4aeca460aeea2ac6cc30d57b2e9bc72a053bafc80a97fd37a4b7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1430/magpie-cli-linux-arm64"
      sha256 "a5a8d58a1103902fc5ab3369b971930751c00ee88df1d036c45697a60b0bd46e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1430/magpie-cli-linux-amd64"
      sha256 "f90d03468705829fa1d64e4aefdb98296a1403f88172edf2eed02cba8bd961ce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
