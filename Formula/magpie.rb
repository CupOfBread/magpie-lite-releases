class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1346/magpie-cli-darwin-arm64"
      sha256 "e485b4f8321dcb81050167ded4c91a40260c845a36f70090ca59d048f246ef7c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1346/magpie-cli-darwin-amd64"
      sha256 "6b11fac0aa1646332c551cb33cc7ce2e50733d8faaaba387dbef4a90130f67b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1346/magpie-cli-linux-arm64"
      sha256 "157cfa5fe91f753bf8a3a93dbc5e15127ecd2090873a13573683b890ef53f9d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1346/magpie-cli-linux-amd64"
      sha256 "f80213ba6bd5f770bdf677f57189a652f7fadfed68383eada36ae7c99349169d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
