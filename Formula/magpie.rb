class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1603/magpie-cli-darwin-arm64"
      sha256 "84f3506486ab308735ae1e674559ab1b17f02781f6abb902cff4b97cc8e438f2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1603/magpie-cli-darwin-amd64"
      sha256 "ba25ebf535d0ade8cd7278bdd9692f4d8545cac0838fa62b4a79f8ee3b758a02"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1603/magpie-cli-linux-arm64"
      sha256 "ba1a3bd384747451a63b471cd8f19fdea105f0a58d97afb945c25e61ba2a2731"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1603/magpie-cli-linux-amd64"
      sha256 "b712e78129c072fab1c97a576fd3b450e8525a0363fce59a3b504c021eed5f07"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
