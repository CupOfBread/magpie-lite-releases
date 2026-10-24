class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1378/magpie-cli-darwin-arm64"
      sha256 "107091966cfdab94db62614f6d3c5bfd4caa51a33cb2510db9d84a6c5341b543"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1378/magpie-cli-darwin-amd64"
      sha256 "d69b9fca52e1d25876e5d1e5b87c1cc4feb4e7760733eb16e376a37e1cccb986"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1378/magpie-cli-linux-arm64"
      sha256 "9dd6c9d0a1ce83983eb92d9accc1d6f8452b1ce02218c8f1c0baf06bae8325c9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1378/magpie-cli-linux-amd64"
      sha256 "99693048af0995593d46f5449dd36fb44bb1b58a04cb0411ca6569e1d9f08def"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
