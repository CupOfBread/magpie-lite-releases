class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1338/magpie-cli-darwin-arm64"
      sha256 "5829e37ae8f046bc765345807b96d5a34247c011f2a853c89e4b148f4788d9be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1338/magpie-cli-darwin-amd64"
      sha256 "3f737f8f8d98579970ac67174339d41b49c46677fbd4a56d71f53367e6548732"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1338/magpie-cli-linux-arm64"
      sha256 "ce80cbfd851e7f7b39a1f6b12b3d7d37fea2c1c0a742e28f7cd44b8294f85507"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1338/magpie-cli-linux-amd64"
      sha256 "443b20f95b870a8693402dbf43b073eb695ff3d6029114a4b3eef6b9c127d6ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
