class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.94"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.94/officecli_0.2.94_darwin_arm64.tar.gz"
      sha256 "ae9689e15f5522a4f33f51296d685ecc5140ac4366547203a713df4977b72c42"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.94/officecli_0.2.94_darwin_amd64.tar.gz"
      sha256 "3d95f1798af095c9f8dbb826ef0c41f2e414b4a56377ef8d8d3d3d21faf5cb53"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
