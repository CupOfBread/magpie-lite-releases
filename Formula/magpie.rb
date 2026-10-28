class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1798/magpie-cli-darwin-arm64"
      sha256 "68435541225930c99ee47a598fe83938a4f6d4dc1fa9fcba5915e2a1660c62f7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1798/magpie-cli-darwin-amd64"
      sha256 "06c6f48c4e3067f9ff2f13cc63196ed36f0f2ccafddc76871e73468988e7310d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1798/magpie-cli-linux-arm64"
      sha256 "4cada7ff71551701b1c3443a3db3164624b6f9ed33f62160a09e83de5a8fb717"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1798/magpie-cli-linux-amd64"
      sha256 "a0b2867de124c4b6799ff25f633019842a2a5288237daaaf237402bde5563275"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
