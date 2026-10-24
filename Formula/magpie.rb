class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1366/magpie-cli-darwin-arm64"
      sha256 "6f5f57cfd9dad2e104d520a5e548aab5decef42b251631cb950a5b1e98a3cf9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1366/magpie-cli-darwin-amd64"
      sha256 "c3ffe02f3373edbcca920bd0d43146acfaf17692ae91ea48a87aa6028ecec11b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1366/magpie-cli-linux-arm64"
      sha256 "6e051439182ae271c6fb6712f6eba2fd280f221b0598b7555931ab7d5fe6616f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1366/magpie-cli-linux-amd64"
      sha256 "93420a9a14e36fdd8dc7a07832ae46113e7910953e95f2889b5f6e1dcbfa1b9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
