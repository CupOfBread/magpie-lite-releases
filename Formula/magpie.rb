class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1515/magpie-cli-darwin-arm64"
      sha256 "a1583253e450c3672ee7c847e37e0bba0d709907085ad450c7859ba4ef1aa9c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1515/magpie-cli-darwin-amd64"
      sha256 "83e39683fef11ddbe0da80af86da660a00339ffcae654802db0f27a71f831af9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1515/magpie-cli-linux-arm64"
      sha256 "c95ce87b470648716c36070173c9c66686a26e467306da893feb2fb77c6c2214"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1515/magpie-cli-linux-amd64"
      sha256 "abbe63fb9325cf186f24a0749aad1dfea0ff0124f2705787d1d49586b3e9cd88"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
