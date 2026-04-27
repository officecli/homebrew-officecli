class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.22/officecli_0.2.22_darwin_arm64.tar.gz"
      sha256 "ddcebebdd2835c36d4050592985e1d62409c047f98af1a55efe352427842b939"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.22/officecli_0.2.22_darwin_amd64.tar.gz"
      sha256 "f44b6e790b9b0e17cf75437249355eb57159755c8adca0a43b66caeb4d0b6d3a"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
