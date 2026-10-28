class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1806/magpie-cli-darwin-arm64"
      sha256 "40f6b41912509f44df8ef48dbcc2665f53f88e0e666f8ba8cae0115f77816ccf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1806/magpie-cli-darwin-amd64"
      sha256 "c647f518134a8c37ab31056078116fe51ca774911879e333a492e51589066d4c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1806/magpie-cli-linux-arm64"
      sha256 "836cf6fc3f86d7d88f2d325bffc0afa17adb5ba15aedc10622e80d5259f4252a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1806/magpie-cli-linux-amd64"
      sha256 "648bac0cac5951a4f39a8fee95900c464f526cca05c6ad48b422f370893f8a8b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
