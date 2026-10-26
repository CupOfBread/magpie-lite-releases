class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1575/magpie-cli-darwin-arm64"
      sha256 "a46dcbd4c07ab9ed202ac33e092dfffff8ea7d27e9c76e0f4e201e2cebdcbab4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1575/magpie-cli-darwin-amd64"
      sha256 "fd6e6b0187846d1e1a252f462b4d24baaaceb8097dd68b59006d316d168c5786"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1575/magpie-cli-linux-arm64"
      sha256 "424854eef7b813252e2678cbc4b87c67c58820b6f1febca65aa39927f96d259b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1575/magpie-cli-linux-amd64"
      sha256 "ccfa4ca82ac982f3a181e6640278775ffbb7ec4ae1fe6e61c7254972323460ff"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
