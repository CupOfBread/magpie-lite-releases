class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1591/magpie-cli-darwin-arm64"
      sha256 "54a627d43babbe59cb41b3348f08b6131c8af3cb6ccea018bfabac402ba86e74"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1591/magpie-cli-darwin-amd64"
      sha256 "11b441cccff0f02085abe269bc063c4cbacf2ae15111a0b527c56bc864f4d60f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1591/magpie-cli-linux-arm64"
      sha256 "1416904bfa8145424255ec783cc3f8a3d9fe5916758864876942ff9832dcd5e8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1591/magpie-cli-linux-amd64"
      sha256 "df638baae019333c4bdf95fa46ac0fa08448209cbbdaf8cae82606396f1b63b1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
