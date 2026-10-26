class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1585/magpie-cli-darwin-arm64"
      sha256 "e731b17df7a12e0325924cd9f428ccf194d3203130f8ed892f9383479852e824"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1585/magpie-cli-darwin-amd64"
      sha256 "d1245b821a33bacc183b323a60c5d61f3bd0c39b018c69ca48a7e7c85343fdd5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1585/magpie-cli-linux-arm64"
      sha256 "14817bb835cbc11810a3914654cbe496cde663d93096283f0624c63bbce59c8c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1585/magpie-cli-linux-amd64"
      sha256 "16e2c32a6162f1df9e560d1222a65745224dc708ef951c13021073a068e4d0fd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
