class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1304/magpie-cli-darwin-arm64"
      sha256 "a5b86c5b94adde0e850308e3f0299a37581f704a71d72dd786d6e042600bf0c8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1304/magpie-cli-darwin-amd64"
      sha256 "0b637b4122335b44f025c2490f8efc59c0e5ffc15c2b22168bc6cf20f8d94a12"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1304/magpie-cli-linux-arm64"
      sha256 "86f89039165adfa3c98213d854a2950f050e76871c8803cf3f1377bd4d1d68ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1304/magpie-cli-linux-amd64"
      sha256 "05de369c87cb80d2d549dd1ec2e0b2d4339deb02b9da6b2578cd9446f40bbfa6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
