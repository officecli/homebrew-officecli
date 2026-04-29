class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.28"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.28/officecli_0.2.28_darwin_arm64.tar.gz"
      sha256 "e123d3155bc9f9d508593fc2fe26793db7f7e676b33eaf12079cb62ff2296e03"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.28/officecli_0.2.28_darwin_amd64.tar.gz"
      sha256 "6d684c1d3ad8fa82af5ab098e3eca0335073f83a433ac16d12bcfc7da323677b"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
