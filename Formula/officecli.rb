class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.5/officecli_0.2.5_darwin_arm64.tar.gz"
      sha256 "2983fe56be41d1191a455b2d9967586d99f5cc609887f60222b51525c5bc6aef"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.5/officecli_0.2.5_darwin_amd64.tar.gz"
      sha256 "ef668b0ccbf7a629ab6f27f6d838d67429c2830d27477698bd55a7cde78992e6"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
