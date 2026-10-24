class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1400/magpie-cli-darwin-arm64"
      sha256 "b86edb42b6b0a1b6f558f4ddca30f6bb84bff5f1cc4795358ff8f9771f12d8a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1400/magpie-cli-darwin-amd64"
      sha256 "15edc3d752bd6c18028feaed55e231174fcd1fa1e4efa2b534fd83f58fdc7447"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1400/magpie-cli-linux-arm64"
      sha256 "60c12654a2d6b11fc5cbd110a3729e96189afecb4f07c0b21a0e8d20a4fdf65b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1400/magpie-cli-linux-amd64"
      sha256 "fe6a0c58217b7cae732ac0c3ef4a1dd056f4a6a48c2dc39da976ee729293b01d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
