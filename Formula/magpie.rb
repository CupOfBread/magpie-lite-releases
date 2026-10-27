class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1786/magpie-cli-darwin-arm64"
      sha256 "17ecc75d757849ed97a02b4a21f43e790dabf1b461b2440616ab76f0ab605b6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1786/magpie-cli-darwin-amd64"
      sha256 "4b6732e81036d1c5e1bac0e744e4736750646008e12cb9931c22c8124439430a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1786/magpie-cli-linux-arm64"
      sha256 "c70d91ae71a3b2a87f5ca8af9181363864e1796739d5fd884b3b8c87748b0b36"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1786/magpie-cli-linux-amd64"
      sha256 "8342f1bfd0e1afb3aaacf89ab6526249c0b5a39aab40e541b3954ec9efcf0ddf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
