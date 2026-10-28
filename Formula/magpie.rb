class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1789/magpie-cli-darwin-arm64"
      sha256 "c00fc4e94e572c1c7b44a5996735171a5f7ac3742b771db782a8ff8fa903da81"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1789/magpie-cli-darwin-amd64"
      sha256 "85d9ebce99149fb14de07178e303ece83622112c5752ef7cff41e04a8463da25"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1789/magpie-cli-linux-arm64"
      sha256 "65f54061139f452ec1b5fd5d43505ab340476d9b8673214368bfcd2287f9911b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1789/magpie-cli-linux-amd64"
      sha256 "5e3f41f1aaef06c7a4776b949cfba10e290aec4ea5ef5470830a0f76303e77cc"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
