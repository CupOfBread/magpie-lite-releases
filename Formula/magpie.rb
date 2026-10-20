class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1297/magpie-cli-darwin-arm64"
      sha256 "01c624dcc0c06a44ce72c5ceeee05709306dabf5fab997269c7600b424591b56"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1297/magpie-cli-darwin-amd64"
      sha256 "4903caff83e3768eec0da64da0bd0b538d7f210e13f9283eefbf8b56361ac089"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1297/magpie-cli-linux-arm64"
      sha256 "891649964339c93583db1699875a9ece657fa7f5ab39790a1382b321c3eaf7d1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1297/magpie-cli-linux-amd64"
      sha256 "f3408be70103658119354ae2bd754b52d48101345db892455cdb4801fac7f833"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
