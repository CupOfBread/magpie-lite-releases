class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1567/magpie-cli-darwin-arm64"
      sha256 "0f5b6d85ce64ef3aece6bde2e1fe9920dd996102af97e55b2ad36b2c69ce599e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1567/magpie-cli-darwin-amd64"
      sha256 "82bb46ef946a2850b46a3807b0378b6f78117c46a8ca2e722689df95242a97e8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1567/magpie-cli-linux-arm64"
      sha256 "ae90bcca6ece26b6ea2843ee5e1777ee50c4300351dbd30be4503f5edae0277c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1567/magpie-cli-linux-amd64"
      sha256 "d1903fe2e784496e0c89f501dcfb916254ad1a5b34430804ff2a7ed1953214ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
