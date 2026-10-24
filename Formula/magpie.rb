class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1396/magpie-cli-darwin-arm64"
      sha256 "351211630c734f4965dfbf8741d421131053def1b0dc0e5e99974813d60616f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1396/magpie-cli-darwin-amd64"
      sha256 "96878386f4d8801c63bd1a0fa878080a1ea74ba84746c6a69c2e3f6f7c4c12d3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1396/magpie-cli-linux-arm64"
      sha256 "e78baa7bf2bdfcf074cf6f77ade642d9635b0eebb07645e9856cd54eee9d7558"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1396/magpie-cli-linux-amd64"
      sha256 "12c7c8d082279c83531184694faa85150c82bebc1be68c7cbcfd4d7541914cce"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
