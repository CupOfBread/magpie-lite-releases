class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/CupOfBread/magpie-lite-releases/releases/download/v0.1.1825-lam/magpie-cli-darwin-arm64"
      sha256 "b699d2b33ac4bfa648a35df192c7d30d8a1de0e1b6d293bde80021d23d22fcc3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
