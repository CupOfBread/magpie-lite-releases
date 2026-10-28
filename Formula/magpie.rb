class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1797/magpie-cli-darwin-arm64"
      sha256 "d45e69b9e7605edb399d9a08de7f8fdecd6451ec2f8d930f199c82523f7eff2c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1797/magpie-cli-darwin-amd64"
      sha256 "a7cb653eb632985853bbc4399c172e7c7aa560c772abf725abee953799d642a6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1797/magpie-cli-linux-arm64"
      sha256 "56ee30771ff4d2bfb46548b96877eb99a0f361dbefc12b94528c2eda8806d824"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1797/magpie-cli-linux-amd64"
      sha256 "80714d18fb2b16b8bfb3c75ca7f4f39c8c34473fd190c54b8e7e6338c4167ed0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
