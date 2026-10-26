class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1569/magpie-cli-darwin-arm64"
      sha256 "599a53adff0df47dda5f79cbee716a64969457a6710152a6cca66bd151505027"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1569/magpie-cli-darwin-amd64"
      sha256 "60cfbdc19f4332932e6c597e55c1acbe6982b6a18bbad670957b861f1cd838cf"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1569/magpie-cli-linux-arm64"
      sha256 "6024b5d9c56b0fdb4cf1e1399ef8292678556fc7af0d622b3667998c842a2ba5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1569/magpie-cli-linux-amd64"
      sha256 "c7b6167125c043ec296f6cd5422db5bd46b442ee13719de055091dad0fcc9f0d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
