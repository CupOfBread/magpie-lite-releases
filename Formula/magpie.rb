class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1670/magpie-cli-darwin-arm64"
      sha256 "6cb999b2d737bb2581b1e77106a1b77b65d1d82f40e8f9f106b4e46993acb4ac"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1670/magpie-cli-darwin-amd64"
      sha256 "74fd0e662e9113341b67d2c396af88cd5aabf6bf8bec15c057b3eedf34fb0bcf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1670/magpie-cli-linux-arm64"
      sha256 "e77fe6c2bb05fe47321e836f13b73816ad75bee973e109f91a3d40fe7b17a215"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1670/magpie-cli-linux-amd64"
      sha256 "6b1f601f93cf05d534174d98626f82e1ddab07ed662e18672514625e6cfbb959"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
