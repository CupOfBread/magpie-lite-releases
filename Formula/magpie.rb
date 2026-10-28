class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1790/magpie-cli-darwin-arm64"
      sha256 "22eefa333e81f2207cb3d65ec81ebf5f0e76f75cd6caa3ef21b182a363371716"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1790/magpie-cli-darwin-amd64"
      sha256 "1862315ef7ff4064fcc1e2af128080bb9353dcde7e4299c4d77b8267be07492c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1790/magpie-cli-linux-arm64"
      sha256 "4a3f2c6e8bd876d74af4a17e3aadedaa8d82e6b18dfda7b609802cae80b15df0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1790/magpie-cli-linux-amd64"
      sha256 "85fd883779901b307bbd0d8374554460e8b0d57de86bdf5b7d1d769a04c3667a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
