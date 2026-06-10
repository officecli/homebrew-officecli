class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.114"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.114/officecli_0.2.114_darwin_arm64.tar.gz"
      sha256 "40412f7734623581cdbfdb24856ecda01f635f2fbc7539fda7161305863ca786"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.114/officecli_0.2.114_darwin_amd64.tar.gz"
      sha256 "406e3b974ab6a9ce8d3d0a8b6cfcd478aecb768c503c2175776c50d02f01985a"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
