class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1365/magpie-cli-darwin-arm64"
      sha256 "b1d808ad45fe6f4a9c31a231e4037d60bc12b177bed3aea12bf6279e92706247"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1365/magpie-cli-darwin-amd64"
      sha256 "29cabab8d3f94c4ce2c90b92943027a0c0324a1831c7d91f4d2c75673aa9187e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1365/magpie-cli-linux-arm64"
      sha256 "c5e92e4cb2333d8c42e0a7b1bd13d4e843da6c294bbf014b3e50149711bcdf22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1365/magpie-cli-linux-amd64"
      sha256 "5b189e757928572e8ace0aa50a0fa26c2090e464e3ccaf7c845bc4c9e1d94cbf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
