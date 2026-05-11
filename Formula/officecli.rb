class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.51"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.51/officecli_0.2.51_darwin_arm64.tar.gz"
      sha256 "700b007a5d913a59102b280e656c8cd8ca50a216d1b80378f57ddf81bde5efb8"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.51/officecli_0.2.51_darwin_amd64.tar.gz"
      sha256 "82970a6a3de78fe93388dd090f6a8525b61ff03973965c7ab3a82fb55cfc02d8"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
