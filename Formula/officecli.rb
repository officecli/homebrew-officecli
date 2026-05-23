class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.78"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.78/officecli_0.2.78_darwin_arm64.tar.gz"
      sha256 "133661c3639b70e598d7f0833d04d1feef6372f6e857dcb6eccca8586eb6e693"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.78/officecli_0.2.78_darwin_amd64.tar.gz"
      sha256 "01ed9ce8fdaf6f1d40811a1ca91d118c526a04159010af06fa2535da46878a44"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
