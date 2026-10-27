class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1771/magpie-cli-darwin-arm64"
      sha256 "a07227258652fbca3085637b07a3d0cadf7d4cee837042324f15982d80a2af0c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1771/magpie-cli-darwin-amd64"
      sha256 "b783f7a275db08e40bb828994cc9e6388906fb5cefafea39dec7846061e7b3fa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1771/magpie-cli-linux-arm64"
      sha256 "bb988c2fc6d0268b0774b6f562e677d170447ddb176ccf37239b6c46072c49c1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1771/magpie-cli-linux-amd64"
      sha256 "05a536cc77501cdf8ec4db68cb5dfde1229ec46a815ae256f79c5f785d99dd97"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
