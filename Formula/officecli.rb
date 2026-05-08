class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.50"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.50/officecli_0.2.50_darwin_arm64.tar.gz"
      sha256 "9ce678bb5146dbaf0a820ae0a92484af532d932ed180e8f464bd6e6e922d0899"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.50/officecli_0.2.50_darwin_amd64.tar.gz"
      sha256 "98c4f9c16085e31e9accaae7545bd3dbeb4ead2d9ff5209e7b98963b2e2a67f8"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
