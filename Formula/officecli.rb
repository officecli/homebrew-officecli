class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.111"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.111/officecli_0.2.111_darwin_arm64.tar.gz"
      sha256 "acba070f7b24b3d9ea4c14fad4c96f59d257fcaa4acbcd15d8c0fb5d86229380"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.111/officecli_0.2.111_darwin_amd64.tar.gz"
      sha256 "e0fa4ada70d2afa43a4577887c658cfdd70acf014ceaa3390675fd51feab5e87"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
