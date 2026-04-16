class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.10"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.10/officecli_0.2.10_darwin_arm64.tar.gz"
      sha256 "0e1bac44ac912792f197859d40c6ac10b1f2a77e07bb052ac5366f83fd3242d1"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.10/officecli_0.2.10_darwin_amd64.tar.gz"
      sha256 "7c373980211fc2e4955f2c41717b76922522bba4af1ac9f0f3d317d50f90f167"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
