class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1822/magpie-cli-darwin-arm64"
      sha256 "32a2bf9c0deed0989a8dc082575155294c9262e92aab6dd966ed2e8cf957c1fa"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1822/magpie-cli-darwin-amd64"
      sha256 "58e0bccede9c4a6cc61724a0d80bcc6cc1b9e16f90791719e7808db132c59692"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1822/magpie-cli-linux-arm64"
      sha256 "5bfc8f6fef029c42ff8e5dcc9f00478f269ef06b7200d1d57d7ae1a9f0b9606c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1822/magpie-cli-linux-amd64"
      sha256 "10670f1c263073997fcee74396f325d024bcd2a950ec2bc7ead3dd947c9d66f5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
