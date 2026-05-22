class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.76"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.76/officecli_0.2.76_darwin_arm64.tar.gz"
      sha256 "933e116545f5265081afc0c209ddd20e5ecd370afbb9bf6804e260db9206716c"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.76/officecli_0.2.76_darwin_amd64.tar.gz"
      sha256 "21a4ed8d760f4ce67008c122a5783deddbaacd174e5c2936b877f908a354d31f"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
