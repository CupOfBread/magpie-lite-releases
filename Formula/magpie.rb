class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1717/magpie-cli-darwin-arm64"
      sha256 "74625825d21116ba04621339e1b395f0a35b4ef8f6cdb683ade9aa2ed1ff7fcf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1717/magpie-cli-darwin-amd64"
      sha256 "c39ac0845badbcfe1d75232e0b9fef9eb78a4a96c4e8ff1978752f5f57637f92"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1717/magpie-cli-linux-arm64"
      sha256 "de80e04adfe038946b3b88fb5e67b086972e60af8bf981d474fd01583de36d0f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1717/magpie-cli-linux-amd64"
      sha256 "ac6fdf0aa5938412919c89a5daac4fdb122f3a9e6c55588d30383e5c7c42163e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
