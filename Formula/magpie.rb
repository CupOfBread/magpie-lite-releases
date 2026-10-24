class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1450/magpie-cli-darwin-arm64"
      sha256 "59613eec3579f49775e044be110fc73d418a91cf7c38528510ccd0d5f5a66477"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1450/magpie-cli-darwin-amd64"
      sha256 "748563ab4cad0f623f4fe8fccc0e82c71ccdb344adb189eb4d916dfe8dbb2072"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1450/magpie-cli-linux-arm64"
      sha256 "d06cd1c8d9057386ecdffacd45848f818ad7bbc7413470c4a2df37c9facdf540"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1450/magpie-cli-linux-amd64"
      sha256 "8734ee4efd0177d9a2faf9ad134fc5d750c087ae0cc4d2d0097f4aa5da9c4561"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
