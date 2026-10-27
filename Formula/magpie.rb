class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1658/magpie-cli-darwin-arm64"
      sha256 "4c16a97ab4498579381b867e9fbe40c1acede20c98103b08d6d4002b0ac493b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1658/magpie-cli-darwin-amd64"
      sha256 "43e54f4050b9dd835815ae500d30d2cc77db71b733ed930277791e1fda9390a2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1658/magpie-cli-linux-arm64"
      sha256 "f02ba9abb335c90ba4343d85810aa6e743f5156c2b40fb73f5a1402ba0bcd765"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1658/magpie-cli-linux-amd64"
      sha256 "31f511bd380bafc95107c7ee70faac5fa9784b30903ce8de9cd5f2ff05ec34b3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
