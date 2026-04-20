class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.16/officecli_0.2.16_darwin_arm64.tar.gz"
      sha256 "893b1d86aa7c42e11ef0f23454f8b0ec77e3c14f2081d3fe9aa7261aa35a19e3"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.16/officecli_0.2.16_darwin_amd64.tar.gz"
      sha256 "1c2d24adc2d194b69520af027cbd5ae96b2756299e527c737fcc5c18bf1e31b0"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
