class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.31"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.31/officecli_0.2.31_darwin_arm64.tar.gz"
      sha256 "efbdff3366adcf4316d7f247bd96d694c6b84acc6d0a05b99d174ebfa9c2581f"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.31/officecli_0.2.31_darwin_amd64.tar.gz"
      sha256 "0a32fdd32fb902a5f588d264e6dcf043f0ec1f5dad4ae9588a5c81bac52df7bb"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
