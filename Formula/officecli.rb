class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.33"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.33/officecli_0.2.33_darwin_arm64.tar.gz"
      sha256 "9a80415d067e70a90700e97ab156c4cea87cdff285dc2727557866a9ecc61067"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.33/officecli_0.2.33_darwin_amd64.tar.gz"
      sha256 "238ec495f78f6d28fec79c8d374840c2b440bfc1478cfb9d94f4ce73b62c0754"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
