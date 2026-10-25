class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1533/magpie-cli-darwin-arm64"
      sha256 "87744198e497bb445428bbfb2ae145b4e90287982f057c1e9990dfb3d388b818"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1533/magpie-cli-darwin-amd64"
      sha256 "03566fb72d17c74ca08be3df62bb0d25917e0e215935a1df269505b3f729a19d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1533/magpie-cli-linux-arm64"
      sha256 "cccf1783cd5be136365fe632e972f94ed3e24b1d19ee86bc7e4ef3b96f32dbcc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1533/magpie-cli-linux-amd64"
      sha256 "ce42bf8a46232b84ec1928bafaa301147184a326ad22fe7318bf6d14aa8cf6d1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
