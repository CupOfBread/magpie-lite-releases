class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1549/magpie-cli-darwin-arm64"
      sha256 "6f497ccfdd8778a17d18bced819123fcf966f47fe9a3214c8c6e571490bb4dfe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1549/magpie-cli-darwin-amd64"
      sha256 "6f7ce73cd3a3d1f8dd1832f70eb4483871b03344268aa6a5597b067ac5d92ed2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1549/magpie-cli-linux-arm64"
      sha256 "7a28e4ee82500f21ddf52469a8a505a9dff1bc1c88a4c847d3f4efe7ae8da507"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1549/magpie-cli-linux-amd64"
      sha256 "e6554cf4712bbb729de3ac286623e801161672bbaf90facad69ad1b096931d90"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
