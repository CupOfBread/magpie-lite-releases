class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1458/magpie-cli-darwin-arm64"
      sha256 "920b1706d9cecc3a486e3a091df2323b9f7c305b36fe6338f80a6ec9e999fa10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1458/magpie-cli-darwin-amd64"
      sha256 "90acd9099411b2fd629ef839624d42fed6dfd881a3aeefd4af22ea2c4057d62c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1458/magpie-cli-linux-arm64"
      sha256 "33354029b128403979c848a6b51c3884a061d4e6c30e2f463aa75139fb93892b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1458/magpie-cli-linux-amd64"
      sha256 "8ea091469d95280ce6719a2b0f5df5407c7506c9a86a7986d94764203ccee6cd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
