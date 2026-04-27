class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.26"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.26/officecli_0.2.26_darwin_arm64.tar.gz"
      sha256 "d8ba3495257d5b4323454999c23e103910d7fc330221cafddd41b60f26e06357"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.26/officecli_0.2.26_darwin_amd64.tar.gz"
      sha256 "80e49ada276e235766d0c2264f0efd76df87e34a0b5b80d4a486f7a5790efb4e"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
