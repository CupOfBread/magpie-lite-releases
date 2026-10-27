class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1711/magpie-cli-darwin-arm64"
      sha256 "3830499797b9930da41f9789bbaf5b50a2c06e8f1320bf14d1478d5f32c7fabd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1711/magpie-cli-darwin-amd64"
      sha256 "77bc0a39a39fbb721df14528284c0befaaf9bbcf49ab897eaef6081cf1aeb8cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1711/magpie-cli-linux-arm64"
      sha256 "b37f6170fa1df9ea0198647ff0af728f2dfd060013de98df380d8e8dc0d5ba5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1711/magpie-cli-linux-amd64"
      sha256 "9ead33949b44ad134bfd88a58780616f84dce72092d04c3c1d5c05bd9d381690"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
