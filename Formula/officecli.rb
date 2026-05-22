class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.74"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.74/officecli_0.2.74_darwin_arm64.tar.gz"
      sha256 "b7e79310d73138e05a82c11656ee07839e30b1add2cfcbdef15db2da85c72d83"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.74/officecli_0.2.74_darwin_amd64.tar.gz"
      sha256 "2efb213c211176d79a297610d2a27bd7eeba990acac87c0013d1c4b6f48280aa"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
