class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1646/magpie-cli-darwin-arm64"
      sha256 "f6fd29a245588acf89c29e6de62eb35893c9cfaf33ff91ad640a0bfbbcf02bc7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1646/magpie-cli-darwin-amd64"
      sha256 "2c5e0f1b695eafa1efa7f579850a9977841757f18042c2abc07a63519126866c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1646/magpie-cli-linux-arm64"
      sha256 "ac189197fca3a645f23b5ddea0c84ecb4fe9cea51f34d6cbc2b4641698ee27f3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1646/magpie-cli-linux-amd64"
      sha256 "dee1b616a762d8c1475b260f0e2d9db1779c663e9beb068223d5e928d965f22d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
