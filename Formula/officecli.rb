class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.102"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.102/officecli_0.2.102_darwin_arm64.tar.gz"
      sha256 "5b473e8d5d858e3e10349a32250c697755fcf3f4883e7eeca65a556e18250347"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.102/officecli_0.2.102_darwin_amd64.tar.gz"
      sha256 "22233bf645b74cfb9a00f8c3f2f9dd21ad1347d62c19bc22f48101f86b35bd5d"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
