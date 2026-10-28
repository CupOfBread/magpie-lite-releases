class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1796/magpie-cli-darwin-arm64"
      sha256 "b5ca59ac6fb98ee3242195ee7ffb3868026c1d6c472a716928a5e15a71e10d97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1796/magpie-cli-darwin-amd64"
      sha256 "7358bfd725b7e04ca5ebed493733427d7e2dbfee262326733e2761855b7a18a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1796/magpie-cli-linux-arm64"
      sha256 "ad303e7a8ed1afdeecef784d170e8a7909b167328540c0f86e863971f79107dd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1796/magpie-cli-linux-amd64"
      sha256 "b45f2e3923ed2397ab1ffd3780f33b2276f7b6fc04d44b18d7e8522b708ccc26"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
