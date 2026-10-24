class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1446/magpie-cli-darwin-arm64"
      sha256 "39ade9e8160c0f1e3a69df9027c7f6398848c88583033b678fa4acb52c53df5c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1446/magpie-cli-darwin-amd64"
      sha256 "03c0e4c44603a38767c2812c8fef91c9dfd53a81df2b0607c1cb390b26c37797"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1446/magpie-cli-linux-arm64"
      sha256 "d1cbfa8d3e6d4d0f339a171644d313b55deda84fcba1ad47921b6506cf641471"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1446/magpie-cli-linux-amd64"
      sha256 "ba7b7340d2c368aa900a477a3bb31096a5d3bc88a003eb77ef7155023698a5e7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
