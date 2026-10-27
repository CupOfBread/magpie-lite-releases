class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1699/magpie-cli-darwin-arm64"
      sha256 "f38c1e9c62a95e0b1efc1e9ece6a3f76169af48321ba74a33069d79aac688a08"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1699/magpie-cli-darwin-amd64"
      sha256 "c2f48c32a2b559bff6677659299ebdc6e47cb794475b1a8c407f13a7dd463581"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1699/magpie-cli-linux-arm64"
      sha256 "cd051e4bacdbb28aabefb6d20241716ae91c6b9cff33cf58ec8efb661c83bb60"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1699/magpie-cli-linux-amd64"
      sha256 "77da2ff959e3a9f4ad9b3844fad77c6e49a685bc2d19800dbf7efb48e7491aea"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
