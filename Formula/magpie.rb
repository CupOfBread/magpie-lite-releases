class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1301/magpie-cli-darwin-arm64"
      sha256 "235ad91d809e00ae1aa5fa82fe8db4503b23cd15cd10f20db613c62da4706b63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1301/magpie-cli-darwin-amd64"
      sha256 "fdd446b9d185d0075d0c2d058f452fa971540964202edcc484f5d5c34835fdce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1301/magpie-cli-linux-arm64"
      sha256 "8a16d2e7c0f72fb2f9d92b8ed76db2eec18dfaaf9eeaeba52025246ce21f8d07"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1301/magpie-cli-linux-amd64"
      sha256 "23f9d3b05c9c689ea6631b2adbb5fcba2b01895daa3fc84f5093808a32597152"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
