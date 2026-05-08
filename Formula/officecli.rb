class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.44"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.44/officecli_0.2.44_darwin_arm64.tar.gz"
      sha256 "ec35771be43bf50700e925c8c60c5b7cfb5c85f42b4f07718c71c0052488e8d7"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.44/officecli_0.2.44_darwin_amd64.tar.gz"
      sha256 "2e6ae58d3d3c092999b617e5eb09d0cdda250a4e339985335390a0ffee20ec6d"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
