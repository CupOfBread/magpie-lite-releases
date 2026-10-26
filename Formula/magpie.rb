class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1606/magpie-cli-darwin-arm64"
      sha256 "9a985fa233dd4113a85db37dd72b2302cc3bc8092dd215fc53311ed9403dd4dc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1606/magpie-cli-darwin-amd64"
      sha256 "89ccf327ab637145ac76d31d72ca3fe49c266d2b91e2fe859d741070bca7ca2d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1606/magpie-cli-linux-arm64"
      sha256 "6d598ff197e066633667497bf4b0e157f1450f41ca58ea335178018f278075d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1606/magpie-cli-linux-amd64"
      sha256 "8678cdf3a11146cd695d1d5ca343080f0e4726b2b24d46b81688cb512156e188"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
