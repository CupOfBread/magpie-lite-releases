class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1306/magpie-cli-darwin-arm64"
      sha256 "d806cc1a122fc8e27d2386973a4ec2fe183635ae5fcbb648ee178fb56f335545"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1306/magpie-cli-darwin-amd64"
      sha256 "922e18833f2b267265fd6b5e151c8ff55fe74f8f68349abf0d60a7cc4c0c0323"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1306/magpie-cli-linux-arm64"
      sha256 "c3cbce6e45d112c43076e92e344b2cc438cc96544cea0fecf69536d046c381b9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1306/magpie-cli-linux-amd64"
      sha256 "c46cfe8c09e48d33270286f11b61940f17e9bc8415d93a77af890d6373f1f445"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
