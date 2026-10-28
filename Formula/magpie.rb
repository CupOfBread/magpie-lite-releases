class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1801/magpie-cli-darwin-arm64"
      sha256 "9afabef2e6ba37122feae7c3d8f2ef29203777320c314fb257fc03346bee0bf3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1801/magpie-cli-darwin-amd64"
      sha256 "e971313073a33ae7d17f71707a9cf792c301d781c96c2a9c6bcb5db255dfd575"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1801/magpie-cli-linux-arm64"
      sha256 "b80d42706b2ae56718593dc22cd41128d75e59b182ac56b6f814164823abcfc0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1801/magpie-cli-linux-amd64"
      sha256 "8fa98442f26e2ae590e7272122c76d655f689770d824fb2c698abaea3aff629c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
