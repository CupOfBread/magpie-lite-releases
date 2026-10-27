class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1657/magpie-cli-darwin-arm64"
      sha256 "49ace31295b8dae1ccec61b57420bc2ca8f12923f7078f51c10e5c815a778616"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1657/magpie-cli-darwin-amd64"
      sha256 "a8a6a67450024c174418713d63766cc8ee22bd536bfd6b94ccc826f6e7aa3b4f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1657/magpie-cli-linux-arm64"
      sha256 "23d60254ceeaf08ba45588dc5aa2c324b153b66c1e41d5de60dd547030087a23"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1657/magpie-cli-linux-amd64"
      sha256 "251dde09875a0afd5262618855d7ccfe55d935bd1019d64c113b3a3fedb2f9a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
