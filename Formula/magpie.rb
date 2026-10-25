class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1531/magpie-cli-darwin-arm64"
      sha256 "8fbfa4fb18b09cc6ab9c7a2a95646d4bd973c1dab7c142b1ebec776d81bfa0c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1531/magpie-cli-darwin-amd64"
      sha256 "fe3d50640bc130f589c80b8d337a31cf587c9c1ded144dd8fe8c6200b5693275"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1531/magpie-cli-linux-arm64"
      sha256 "a4cc4a8dd7de6ca9e66871c2af6267f2e3d7db7c4fe1c3f28b0d74d0d595c453"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1531/magpie-cli-linux-amd64"
      sha256 "91a4232a4ba072667c14b80c557c348da394e1cda7e6af012696d9236b3f0de6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
