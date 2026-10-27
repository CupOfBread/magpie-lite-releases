class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1678/magpie-cli-darwin-arm64"
      sha256 "72773dc72e2a8fabcbe6a86460b1cfdd098dc85ef330be505d53aadb8d972a4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1678/magpie-cli-darwin-amd64"
      sha256 "8847c5af7e7aa2883f41f0ce6a7e64aa775897a84bbf5aeb4b719bcc6e822de0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1678/magpie-cli-linux-arm64"
      sha256 "5818aa3c2ecbe039cbb1ca13aae136399a2f7f8d7260aaf99265ed3ed6296852"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1678/magpie-cli-linux-amd64"
      sha256 "30e4c142ee99ea65863b8e8a3a7651f70adc4096ada6561c0cf927133a018601"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
