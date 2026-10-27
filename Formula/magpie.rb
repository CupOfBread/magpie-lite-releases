class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1687/magpie-cli-darwin-arm64"
      sha256 "010cd1f8e8c2d487d27a2c063a56b59391e164ae182bf5eea2346c6734786e57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1687/magpie-cli-darwin-amd64"
      sha256 "a6b0f73db6f0a190e64f0d17ffffa1d53d3c54640f0aaff2152e3925c5a8efdc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1687/magpie-cli-linux-arm64"
      sha256 "3b44b362cff3bd416632acd42ebf83ef51eb707efc0b0cbd9ce991cf14a41160"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1687/magpie-cli-linux-amd64"
      sha256 "cfb9ec868c0e460317275210849b45f93b67b8e5d8030a51897535bef1809b7a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
