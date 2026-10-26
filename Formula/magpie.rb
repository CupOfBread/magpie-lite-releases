class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1650/magpie-cli-darwin-arm64"
      sha256 "b3ce90a48d731f9275a4e8dadc8137d50fad911425bc03cf5be32c97d50611bc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1650/magpie-cli-darwin-amd64"
      sha256 "98ce092838b1879e8b0090dd5f1d5df5fa9c4dc039266cce09613a6c3115d6d7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1650/magpie-cli-linux-arm64"
      sha256 "a77712c9bdc661a4d8b0ff0460421c52c870e5b0ba1c3e1b8fd0938941fb6673"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1650/magpie-cli-linux-amd64"
      sha256 "c734627167784e8793dd62377871d222c294561e28de3cf557eb1dbced98c9d3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
