class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.77"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.77/officecli_0.2.77_darwin_arm64.tar.gz"
      sha256 "169aea252961fc7a364aa74873988ddad30a6b3762d0ed288b81632b42228186"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.77/officecli_0.2.77_darwin_amd64.tar.gz"
      sha256 "b23b6b783c5f3efab13ef8fd8f998264e14ffd21e484fe5c5542589c8d98f6d5"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
