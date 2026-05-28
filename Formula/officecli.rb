class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.104"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.104/officecli_0.2.104_darwin_arm64.tar.gz"
      sha256 "abd510b145efef863cffb84917827a0ba4dd5731acf797c91e118d2ec1ebdf20"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.104/officecli_0.2.104_darwin_amd64.tar.gz"
      sha256 "63adda8d13f98b1d8b4e5b222cca0350812ff26a0e9e9ad01277c209c77dd714"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
