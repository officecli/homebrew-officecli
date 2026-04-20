class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.15"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.15/officecli_0.2.15_darwin_arm64.tar.gz"
      sha256 "7865710a9cbd6c1427b59262dd405c053a9a9936c15e8af58ce0242657d8d64d"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.15/officecli_0.2.15_darwin_amd64.tar.gz"
      sha256 "f94c1aa3d06bcd79b7d5eff2ffebdbe82629a0ed4a4b3d1464ea8cecfc9c6dad"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
