class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1708/magpie-cli-darwin-arm64"
      sha256 "53a3fd473e30d01c9b7bf07eac43f970912567e7a0384f93dae82ba07d479c66"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1708/magpie-cli-darwin-amd64"
      sha256 "23c33266eacf079b5350b642b96be73e79648aeac72aa9d005b5fe0808a66076"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1708/magpie-cli-linux-arm64"
      sha256 "42a56de7a3913438f8c217e7982baeaccbf0c60d0dab6f1f5d5eb2133271f185"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1708/magpie-cli-linux-amd64"
      sha256 "64fadad22276a91d27920096c790f12531fd783b28b692170955c755c3d33f41"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
