class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1778/magpie-cli-darwin-arm64"
      sha256 "8b5a12ca4970b6252ce8e64acf29cd2102c9cf35b5017b113c75f46292962b1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1778/magpie-cli-darwin-amd64"
      sha256 "d44ff6075125e6dfb9f46c6934e19aced4aa2ceb2bd5e8e976ed8ac78381c4ca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1778/magpie-cli-linux-arm64"
      sha256 "f88aeddeab7ce7d1992497f760a5fef32bb5646b42f39e19cefc512e596fd368"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1778/magpie-cli-linux-amd64"
      sha256 "53098a386b952f246fd6ede1a16088c6dbf3566698b70bc93abfbd25154092f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
