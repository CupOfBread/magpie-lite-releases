class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1818/magpie-cli-darwin-arm64"
      sha256 "59b8bcb0a699caa79f4c4a894bff4694e5c86b684691b9a14efde06594b46248"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1818/magpie-cli-darwin-amd64"
      sha256 "18d68538d94d05797894f2b5dfe0fff78c7571d6b37c85ab00d71305ff7bce15"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1818/magpie-cli-linux-arm64"
      sha256 "6c3335b8c851f7ab014bd603ec210580ab606b96700d2bac78a016d479bef6b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1818/magpie-cli-linux-amd64"
      sha256 "ae315e3121cedd7a7bb73f28f069b90ce21d34c34850207831252429f822e77b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
