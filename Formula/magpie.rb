class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1623/magpie-cli-darwin-arm64"
      sha256 "de2423f09d97e9979e6b06d652ff8f6cdab732a676a94f757110610e854070b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1623/magpie-cli-darwin-amd64"
      sha256 "dee5cc94034ba63d478ea8b956f9974f55f453aaa1b9d1e23e26daae8e5c69aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1623/magpie-cli-linux-arm64"
      sha256 "8ef1858eca8963889a41e006ae37845949e117e0f002816387f9ad3afc78579b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1623/magpie-cli-linux-amd64"
      sha256 "4950e33475c63a18683854f3c5693ff9bf67c66c0eb1cfecb5c982346a9027f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
