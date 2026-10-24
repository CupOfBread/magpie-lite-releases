class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1449/magpie-cli-darwin-arm64"
      sha256 "521b4b233ef0c93ec5ced5c5d5a1efb397ac1236f190a40af282894d48f3167f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1449/magpie-cli-darwin-amd64"
      sha256 "54cc887265078c34541640ab1c4ce742f0645c60430e501f536705e3fa33480f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1449/magpie-cli-linux-arm64"
      sha256 "9610e42a8fecc6e437f051ecee534604e943d3b273b9285d317eedd10de4c9db"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1449/magpie-cli-linux-amd64"
      sha256 "d95332f9df23cd364da37a66f58dc695be310748f58b252baaaa6e96ffd0472c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
