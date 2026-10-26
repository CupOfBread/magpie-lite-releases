class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1630/magpie-cli-darwin-arm64"
      sha256 "70018c1a5a0009bb943edfc14385607d281c45b4ec6c66bab13b300606b1ad35"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1630/magpie-cli-darwin-amd64"
      sha256 "804a03a38d2e9c0b30fa083af7b175b77add2bfa26f7a1158799a40fa419e511"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1630/magpie-cli-linux-arm64"
      sha256 "395c14755fe29121716ff0c239a578fead149f6abd274c3702c5f4961334147d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1630/magpie-cli-linux-amd64"
      sha256 "d462807e810759031f3ec252d32c395465f7143b50c91ab14d9d4c12604ef0dc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
