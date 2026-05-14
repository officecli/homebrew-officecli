class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.58"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.58/officecli_0.2.58_darwin_arm64.tar.gz"
      sha256 "09a7ae767b32ed8a4f35789f364c6c2d3985b86ba5f361d8cf4d44dd4e84b6ee"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.58/officecli_0.2.58_darwin_amd64.tar.gz"
      sha256 "b47bc0228bdea37f485a4d744be0ed98948d0cdd26bc5ef2679335f86fbfa4fd"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
