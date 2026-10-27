class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1675/magpie-cli-darwin-arm64"
      sha256 "bb2631ccf55cf475134fe53839533604a29f96da964940c50985f23f14e20dd4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1675/magpie-cli-darwin-amd64"
      sha256 "ed15c1a874dc6ca7bc9e298b318c3cb3c950f9d8306fd1d0e6a911deb02b8624"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1675/magpie-cli-linux-arm64"
      sha256 "e867e5b824b8597826f1ad346177e3aa10462156b2918ab6c155f431554fb572"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1675/magpie-cli-linux-amd64"
      sha256 "7387ad3bb2b8d6702d5266a5086917791817ee73c27127d058f2dee943afd871"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
