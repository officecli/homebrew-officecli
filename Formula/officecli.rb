class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.68"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.68/officecli_0.2.68_darwin_arm64.tar.gz"
      sha256 "9e6a3c3e52c081df6df408517eeb3aae54e6fa4d08dc1a80612ac04f635985f7"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.68/officecli_0.2.68_darwin_amd64.tar.gz"
      sha256 "c25b74acce269e31afdeb5bf2e73c13a7475508cfdbd923b6af67161c87fc481"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
