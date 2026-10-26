class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1619/magpie-cli-darwin-arm64"
      sha256 "806aace51e7ed431f94a5a9a010b364ca6278ca543fe0299074a8da1954a2819"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1619/magpie-cli-darwin-amd64"
      sha256 "95c19726e09df580481889e8facd79ed4cb726c92e41f13447d6c5a66925ca99"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1619/magpie-cli-linux-arm64"
      sha256 "076dab78c5619f9582615696402b3d4ead612bfdf36f1541b6d30d8a78de0005"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1619/magpie-cli-linux-amd64"
      sha256 "95241ea543c73992e348234dbf2525cef66d6f54b02e2fd3180da7cf54784a9c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
