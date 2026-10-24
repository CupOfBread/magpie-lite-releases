class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1395/magpie-cli-darwin-arm64"
      sha256 "a6d3d17ba97d331222d0bc7d58db6a4426befd42afdae7918c80cbc80499157c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1395/magpie-cli-darwin-amd64"
      sha256 "a866bf7df0c263b027d94e29a7cc7994cbcdeed108694727ba5ae7acf575a474"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1395/magpie-cli-linux-arm64"
      sha256 "2ad01d811bcfe57767166ee7500e67899db4ac865e37f010c25a854973b4b86e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1395/magpie-cli-linux-amd64"
      sha256 "9290bee1cc1bcbc6701abcb24864f50602b900e59323e1ca2062c552b7424414"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
