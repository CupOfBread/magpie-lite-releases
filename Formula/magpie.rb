class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1719/magpie-cli-darwin-arm64"
      sha256 "f548a6dae7ff65b8b1bf8fe19c67d86b45e3755079973f6c8574bdd618623d7b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1719/magpie-cli-darwin-amd64"
      sha256 "cd7e6e3dd28daa13940c0e4db2f2fff6128db8dddd5d919eddc024c27ae4b67b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1719/magpie-cli-linux-arm64"
      sha256 "6cceaf59aa654a23baee3089f2a18e48dc052fbd3c9ffb5ada901b1f5cefbbe7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1719/magpie-cli-linux-amd64"
      sha256 "daaa82b3fa2f52911b2299e408edf3b31c8f3d7fbaeb47a4b85c84b012f3da25"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
