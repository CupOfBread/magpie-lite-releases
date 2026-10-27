class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1739/magpie-cli-darwin-arm64"
      sha256 "e9171976c9a5b546592f7f5fddb1c1cbf53f4ac0509d85a0ed3355e550e88c11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1739/magpie-cli-darwin-amd64"
      sha256 "f6a2e482d3e0f595793a824fdc0cad87952d1fb41f4144eaabfcd8f7e49a1841"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1739/magpie-cli-linux-arm64"
      sha256 "ff23695d7091714cb561831406d6cc17bd4da4abe735414da857ebd74bbf69a2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1739/magpie-cli-linux-amd64"
      sha256 "1e116ad371462552aeec07ac425a885cfefa9d252b061d10ad8d1fb3b7415414"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
