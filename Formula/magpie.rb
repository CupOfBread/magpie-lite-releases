class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1413/magpie-cli-darwin-arm64"
      sha256 "1e1843b6ce89bed77edf8fc591aada52bce1a3ffdafe412d4d52151015410dd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1413/magpie-cli-darwin-amd64"
      sha256 "d0fca43d58836818c7270cc93cf23c305a41903940346fae07839573bb36e2e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1413/magpie-cli-linux-arm64"
      sha256 "ddd5fbafebfc8835968898dabc4b8de438c0f4bc6ec1e421e2a7d05be8c83e3a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1413/magpie-cli-linux-amd64"
      sha256 "14f87c911f5435d910a3e8c12fec9b8c01cf90fcdb6ee9e2c152da8a67aa6146"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
