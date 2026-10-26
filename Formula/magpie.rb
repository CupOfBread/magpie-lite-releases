class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1570/magpie-cli-darwin-arm64"
      sha256 "e6ab9a0f6fef65e4f3d0b80c15e0594dc5b46ee63781629e3033628ba65745c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1570/magpie-cli-darwin-amd64"
      sha256 "6bbad14e3f71f54e778ab7ffde3db8434c128f0b1999dcb592dac5c6ab775b23"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1570/magpie-cli-linux-arm64"
      sha256 "29514b66f2c6b5dd785199ee33340da769d387e211a15fa28c24543ddf37d275"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1570/magpie-cli-linux-amd64"
      sha256 "655d1f278cfb5ebbd224919035a27dd2b649f56dabfbc98efbfb28c162476227"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
