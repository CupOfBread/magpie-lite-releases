class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1815/magpie-cli-darwin-arm64"
      sha256 "5ee66b385aae6e9143ae3c55bfd2f4859979169333720a39b0c3cc561650883a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1815/magpie-cli-darwin-amd64"
      sha256 "62d6e2e412a22567e0d3e558ef24e2d654e4a7f250248728c3be59394fd343ce"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1815/magpie-cli-linux-arm64"
      sha256 "6dc06e76c7ed3da13bfe4ccac6a269b6febc37e032dc5b8a0cee4825f6f7c7ba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1815/magpie-cli-linux-amd64"
      sha256 "0a7460dd97cf4be2c42633450db04b690f0845406ad0cbf6103ae06ba0083c9f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
