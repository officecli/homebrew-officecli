class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.24"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.24/officecli_0.2.24_darwin_arm64.tar.gz"
      sha256 "7d2964545985490ba6bc4328cf77a987e8982d63c2faa8ee25c31a03c23c557f"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.24/officecli_0.2.24_darwin_amd64.tar.gz"
      sha256 "93bd94e88b0d9356e5a285f874194a2b96ebfb3e7fd7ab712393a3bc5478b863"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
