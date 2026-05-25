class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.97"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.97/officecli_0.2.97_darwin_arm64.tar.gz"
      sha256 "00e1d9ce52a999da3e754a91ecd1db3e2a849b48eb40149b166a25ee971baeca"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.97/officecli_0.2.97_darwin_amd64.tar.gz"
      sha256 "12eaa40749ab1a6bc174f4744a0efc8a86284c6fc90aad5a876535a8efc22cfb"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
