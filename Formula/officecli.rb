class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.63"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.63/officecli_0.2.63_darwin_arm64.tar.gz"
      sha256 "fe6e40dbf6b9aa911936946630b987ce3f910a22c1b385011e8bec70b7597e0e"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.63/officecli_0.2.63_darwin_amd64.tar.gz"
      sha256 "748de43b90265167c19adefe724f53d2a27a1466d025b0895b0bc934d77f8dce"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
