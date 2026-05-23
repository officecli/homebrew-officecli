class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.80"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.80/officecli_0.2.80_darwin_arm64.tar.gz"
      sha256 "1cf5aec645b45cff63b2fd47579f63629d04c0540639ef8d1d2d5b2d82de2e82"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.80/officecli_0.2.80_darwin_amd64.tar.gz"
      sha256 "7d2be0986befd7cc26c5da03d7698b4820aeabb37041c96aa949d4af1047430b"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
