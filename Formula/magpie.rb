class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1324/magpie-cli-darwin-arm64"
      sha256 "9c4cc192a031698d17040bd554c1bed5354807fcc8db435c70b4e447158a0f7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1324/magpie-cli-darwin-amd64"
      sha256 "04d92571afdbd8ba2cb3e7e9acb44163ccf10ed6cbcaccc17f273d4d40cb52ad"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1324/magpie-cli-linux-arm64"
      sha256 "449e28ce4d6d8d29e2b7f91c66a2187379f10e44106d81465f37d03058f40388"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1324/magpie-cli-linux-amd64"
      sha256 "620797b7f52f003478a5516ab6ba2fff9ff95174378507a0484ec976930e9624"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
