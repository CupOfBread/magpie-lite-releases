class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1420/magpie-cli-darwin-arm64"
      sha256 "1ef74a9ba110494b078e89dee077d3071dadfec25a4f12d23961f3ac7db217f5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1420/magpie-cli-darwin-amd64"
      sha256 "cf33e12647ec73dd3c784cbc6370e67e84fa8dc91bff04a127b1630ab804319d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1420/magpie-cli-linux-arm64"
      sha256 "de6de2cd763e48e32c3f5313ce18c9fc928f103d6d55af885348698f6acf3f45"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1420/magpie-cli-linux-amd64"
      sha256 "a7712dabb57e8ee224ec14e38113fbb34b80bf24315a7f4f47c20e15e6c3e34d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
