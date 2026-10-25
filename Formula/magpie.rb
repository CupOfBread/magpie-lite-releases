class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1478/magpie-cli-darwin-arm64"
      sha256 "33ac2fede2d119d49d0b0c4e5e184c6e7eb3173ab95503e2a6cb0fbba1453fa0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1478/magpie-cli-darwin-amd64"
      sha256 "153a08bbe366233b6520a702c297203007e311365f3ae2a9b44af20582ed4c4c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1478/magpie-cli-linux-arm64"
      sha256 "45c8e37b04eb7c5bb8a5973a5566bdcf7c2c11d46e56313af4703f65f50969e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1478/magpie-cli-linux-amd64"
      sha256 "167b373ef0cd037f5b792ea75b532927a49d0d31f19329b05cfbe45bbe22f841"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
