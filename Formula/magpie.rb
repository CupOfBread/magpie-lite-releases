class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1685/magpie-cli-darwin-arm64"
      sha256 "26d77dcd7d566189cb3cbe8f72b7a6c7f5d1e31f0df4f2a7837b8d615ce2fd61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1685/magpie-cli-darwin-amd64"
      sha256 "041a271b21540f67fca337170e9a1f1c4a8c801cf5e96da6aa7e973d1210aeb7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1685/magpie-cli-linux-arm64"
      sha256 "def74d2da3857cde25e7e16db2b5736f0192182ef30a49b2f89173c4161f107d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1685/magpie-cli-linux-amd64"
      sha256 "f1bcf3addb3a23a2cc21083bb7c21579220ebeb9bc214e81035ec642a147def6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
