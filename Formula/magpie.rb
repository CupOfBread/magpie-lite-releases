class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1750/magpie-cli-darwin-arm64"
      sha256 "7c9bd4d62ee91376468c7b7cdf00cf656b48197007370affe488cb8954f04f96"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1750/magpie-cli-darwin-amd64"
      sha256 "9991aa9ad6235dccca7fffb2a5dcec839804132f720fdd57abfda343cfd709b3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1750/magpie-cli-linux-arm64"
      sha256 "ef71ef23e06d97295c1871c79a419b311b55dfe522bfbf2dc38eb365d9f692fb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1750/magpie-cli-linux-amd64"
      sha256 "ce8fe70bd16f831af766746252d19719967760b9632f311151cd1e6351fcf474"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
