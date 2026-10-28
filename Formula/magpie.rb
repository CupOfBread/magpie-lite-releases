class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1809/magpie-cli-darwin-arm64"
      sha256 "ece18e3ff5aaf6f49d6365581a764b4e8164e011a4a70039b299a587e8dc7333"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1809/magpie-cli-darwin-amd64"
      sha256 "36114319c1e225b77714156811d4ba1164cad202067d9db649a0de320d5e72a7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1809/magpie-cli-linux-arm64"
      sha256 "87cb0aa92a19471fcb9c8095f9f023d60986fb21d38fb6e9af735084a4eadc63"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1809/magpie-cli-linux-amd64"
      sha256 "2df4e17d00897012e666495c3c455272f9e5cc51e68a36bec7f6faf2b08fdaf7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
