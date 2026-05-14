class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.61"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.61/officecli_0.2.61_darwin_arm64.tar.gz"
      sha256 "14355e0bbe7e2864729e15220c34718e6c2b78dcdd4a8999fdebce0d01b11107"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.61/officecli_0.2.61_darwin_amd64.tar.gz"
      sha256 "b2fc21175f2ddc2d6ee6859583dd1e2e79ba0d31c72aea41ea579d830e3e3c31"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
