class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.40"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.40/officecli_0.2.40_darwin_arm64.tar.gz"
      sha256 "cde4bf0d71d109527cfc59c1bb36e574228a6aa31ed75abb68fd5db9d62584d6"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.40/officecli_0.2.40_darwin_amd64.tar.gz"
      sha256 "e6eb18324c49e31e43dd11d21de734d5c632885bb47d147da9094bdb94d413a3"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
