class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1491/magpie-cli-darwin-arm64"
      sha256 "e4f9439af7db29ed7c41b4584fed5b5c25dba5ce3b2e3a01de5d3b14148b16d4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1491/magpie-cli-darwin-amd64"
      sha256 "d90c2e431c8cb7cf9c74db79fe60eab6643fc52d17c42a02e3e363bbaca783ab"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1491/magpie-cli-linux-arm64"
      sha256 "e2979a422abecd3ff57c6ca84ca8e1f9122d4ec69456a1d6601bb6c37ad9db72"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1491/magpie-cli-linux-amd64"
      sha256 "fc2edda8f2abd0feab8e60e4d9c1a1f3d9a1eedeae6730dae08fc22a554586cb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
