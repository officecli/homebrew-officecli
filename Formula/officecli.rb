class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.107"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.107/officecli_0.2.107_darwin_arm64.tar.gz"
      sha256 "5748b180b2f5ef1c4b5c2807fdd2451884457285b445dc62fcdadac3f6d1db72"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.107/officecli_0.2.107_darwin_amd64.tar.gz"
      sha256 "aaa558cc1cb66c834202675438b496a3f690004e134ad3753eb7f7646077c931"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
