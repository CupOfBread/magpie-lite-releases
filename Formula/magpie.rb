class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1613/magpie-cli-darwin-arm64"
      sha256 "b415e16f47f2edfa10f1892e2b0d0ff319fb0ea4bae9b3b924af99f025220b4f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1613/magpie-cli-darwin-amd64"
      sha256 "229a9e0e7c8c3b7a631f1ab4b97c7b548c5f1ff2af8d5116b4d20e05cd255e41"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1613/magpie-cli-linux-arm64"
      sha256 "1d36ba567c85732d90707fc5ba6d97487ebbe9151c047157a9881dce4f078907"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1613/magpie-cli-linux-amd64"
      sha256 "aab19824f168246d486a4ace5f578ca2ed10186957334891c21c86a3ac413e22"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
