class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1738/magpie-cli-darwin-arm64"
      sha256 "0b6b51abf5a212a849844c8377e935bc243b7b544f6a508a84ba8ab1fe405e86"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1738/magpie-cli-darwin-amd64"
      sha256 "c5b2d971de0d6504c5c8cd69810ba917105b324c61917cedb5dc419734f172aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1738/magpie-cli-linux-arm64"
      sha256 "8e03f9407cd51fe502faeb03351ecee906cee3886335b7f7b5bc618bbd3e909c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1738/magpie-cli-linux-amd64"
      sha256 "3b20bb814866a624ee07ae76dc6adbcf73ccbc922c72cb3abecc66637c585ffe"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
