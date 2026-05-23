class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.79"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.79/officecli_0.2.79_darwin_arm64.tar.gz"
      sha256 "5f778e7045b6d950b6cfc5ba27b5d874a10c2796f45ef69655475b5c9af36d09"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.79/officecli_0.2.79_darwin_amd64.tar.gz"
      sha256 "a0c852eb84806d46e0a03f21ef82af9f718f5a80423fd5f48cc20f5a520d4010"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
