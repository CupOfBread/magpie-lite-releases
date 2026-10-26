class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1635/magpie-cli-darwin-arm64"
      sha256 "736f230c43530be9a8c25277e1945d93be2cb915c1f0af2c64cb1e0eeac607fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1635/magpie-cli-darwin-amd64"
      sha256 "0fe5ba26c181a37beb68f9cde7494e328e4c35c82469b849cc59174eb341f94f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1635/magpie-cli-linux-arm64"
      sha256 "4410870a17a9006208bdd8a1aa7d7b507787691c42ab06df59f2741a967325d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1635/magpie-cli-linux-amd64"
      sha256 "515d48a8306511163a79b23d3cb48469251da945b55b456770d9f62fd5f2d6c9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
