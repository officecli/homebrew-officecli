class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.17"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.17/officecli_0.2.17_darwin_arm64.tar.gz"
      sha256 "19eb934e30e96fa775874fadfcc7d93126d2469f2cf2b7e17fc3d271f0cddb0f"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.17/officecli_0.2.17_darwin_amd64.tar.gz"
      sha256 "5895d80423c2db880e47d5773bc46cd6dd4db85e0f99416ffd00f7a045380f85"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
