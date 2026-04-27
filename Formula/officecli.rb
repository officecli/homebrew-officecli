class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.27"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.27/officecli_0.2.27_darwin_arm64.tar.gz"
      sha256 "adb35f0c5f50ddabb7e3e6f67ebd021b74a58e96c2b549a614971958be6b9338"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.27/officecli_0.2.27_darwin_amd64.tar.gz"
      sha256 "8836c2036801bb7f735f025bcf150241cae75749b70464eedc4f7bebb10c341b"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
