class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.108"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.108/officecli_0.2.108_darwin_arm64.tar.gz"
      sha256 "9c16f3a6afa36d4c16bf5b385bb3882274b171ea2e005c76e8e95e03d5f26afd"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.108/officecli_0.2.108_darwin_amd64.tar.gz"
      sha256 "bac533f1509a8a8e36e3880168ff13e8c9619f303c794c0e4caadb619ecd16b4"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
