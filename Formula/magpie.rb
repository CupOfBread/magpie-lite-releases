class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1511/magpie-cli-darwin-arm64"
      sha256 "ec9c398ba528eff1fa9efe04e9861135005f946a8402194fb6babca25a945bd5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1511/magpie-cli-darwin-amd64"
      sha256 "7fa99a35fcec5259fef52c9b33984bea348414854ba9087fe8f217b64ab28eea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1511/magpie-cli-linux-arm64"
      sha256 "42ee7ae06b6f2980cb47482b24a3a256acd2bb7c387614de040c177b9ea38de6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1511/magpie-cli-linux-amd64"
      sha256 "31823b115ba40d7afa479518248bf4eeba9df57ce941bd39dd4e2815c338a1f6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
