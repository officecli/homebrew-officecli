class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.36"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.36/officecli_0.2.36_darwin_arm64.tar.gz"
      sha256 "184f26cb09251aa10b0efc68b681cc33585ff4f804d2480c06adcab62d9f6512"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.36/officecli_0.2.36_darwin_amd64.tar.gz"
      sha256 "3df7362726737e06907abe1f318b05330bb49e9333aab8d802387f46763ff125"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
