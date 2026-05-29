class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.106"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.106/officecli_0.2.106_darwin_arm64.tar.gz"
      sha256 "38856a74c92c81363cb803f8ceafdb19a52b500aa8100aa2fa984626a08dda75"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.106/officecli_0.2.106_darwin_amd64.tar.gz"
      sha256 "9dbb6424257072f48c2c99bbc4af9285d3b9e77dd1146f74e6ddb447ea66cf44"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
