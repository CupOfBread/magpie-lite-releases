class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1332/magpie-cli-darwin-arm64"
      sha256 "6ec4db033611900622a455b5311db405cc928f1b0438e91f7a3870afcce43fb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1332/magpie-cli-darwin-amd64"
      sha256 "d46e00d8045daebb0ef086a9bac2a7086ffcc87c7e52ac501f6d286c8c72c39f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1332/magpie-cli-linux-arm64"
      sha256 "caaeff0efa69f8af9a24f71687ae8e333247cdf393176cf3358b8d2c15f2ca07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1332/magpie-cli-linux-amd64"
      sha256 "5df27f6f936ac01c7c1947d7568dfa9bdf2fc2b27c12ece364b75d13b9628339"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
