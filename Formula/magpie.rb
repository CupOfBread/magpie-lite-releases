class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1817/magpie-cli-darwin-arm64"
      sha256 "c2a341a90ee91bc60cd549497c80c03e4fd61fff9ab6b410fa8dd603f7329d11"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1817/magpie-cli-darwin-amd64"
      sha256 "a058ebb6179a88abd60e9b3d83eb621bad2d24af5eb0d234bac3ab24497a40f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1817/magpie-cli-linux-arm64"
      sha256 "cd477fac940c51dc40d1a6ca1019dd0f13c048a31c7a8b05616d10de35b72c61"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1817/magpie-cli-linux-amd64"
      sha256 "40dcc9bbce38df6224f1c064339a5c87f5afe1ad33f413742f6dc55c12cdec0b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
