class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.75"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.75/officecli_0.2.75_darwin_arm64.tar.gz"
      sha256 "527dd91cc36827b63c794a33d67df4fc6e3b8118c1d00aa79a489f6ccfd0517d"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.75/officecli_0.2.75_darwin_amd64.tar.gz"
      sha256 "97a0db0fc782d32093beca60404e87809e60ea28f5a97e0e5e5ac3abe1304a5d"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
