class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1643/magpie-cli-darwin-arm64"
      sha256 "399c6ab65fe696d120f07ab644f2899ad4c78fa46e314525d3a56104bfe8955c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1643/magpie-cli-darwin-amd64"
      sha256 "d64ff2e7609251a5a660888f274e0394c71c1ea28ceac71285c06d6340f88be7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1643/magpie-cli-linux-arm64"
      sha256 "f6a4a0068fe5357b6c5f6c2be438898c5db612bc992c492c01c861b5cd0b09d9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1643/magpie-cli-linux-amd64"
      sha256 "8d7ab0c4a8fca01e9671f9f8e5555acbb585df2dae9af6f968bb116aa5cd13c4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
