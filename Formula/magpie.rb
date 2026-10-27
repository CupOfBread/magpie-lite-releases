class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1742/magpie-cli-darwin-arm64"
      sha256 "25f193745b42d1256bcb82d82cc6507213c90dfed54b1ad5a2dd1185150e8437"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1742/magpie-cli-darwin-amd64"
      sha256 "b260979be538decf30ce19385563d6337dc4a61a450c0d816544e9ed732cfe6b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1742/magpie-cli-linux-arm64"
      sha256 "4b668883b3221fe722b892d877f3c8e7164895cafb195cb27eb8327949fc12bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1742/magpie-cli-linux-amd64"
      sha256 "5eb6515f3faad13ba6d6f69a96f98b6855b813182b6fab360b2f5b21536c3fb3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
