class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.34"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.34/officecli_0.2.34_darwin_arm64.tar.gz"
      sha256 "f68f9be08d96955f6634e33242b4d67ad573e036ed3453cb3513c7215ba7e86d"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.34/officecli_0.2.34_darwin_amd64.tar.gz"
      sha256 "344fd569fa18c0b64eb48a171bf434d38b12d1351197e0c1d93d8d4dece01b4c"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
