class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1464/magpie-cli-darwin-arm64"
      sha256 "625016f5717e5986fe11d95bc8f5fc1647aef6e934fa265b5c47d2ce8efb5b24"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1464/magpie-cli-darwin-amd64"
      sha256 "08439c9bbe3b2ba41b72748e8b1e339cdb019ad880768b236dba40ebee8f8822"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1464/magpie-cli-linux-arm64"
      sha256 "0c36cf6df39a417b289be668ac064d9a11926ba352a943687004beb948c0e6c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1464/magpie-cli-linux-amd64"
      sha256 "0110dd0ffe8f178ab64215423877424d2d6b44859d226617b3068973acf87b31"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
