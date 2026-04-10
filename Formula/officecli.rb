class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.2/officecli_0.2.2_darwin_arm64.tar.gz"
      sha256 "2a2217c971f36d3d7df9a4a79c5394ea70bc4352eefb5743bf7681023db9232d"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.2/officecli_0.2.2_darwin_amd64.tar.gz"
      sha256 "118307b854704814e6cdf7e3dc8e377615c1d05933476584de56107116f5f2ac"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
