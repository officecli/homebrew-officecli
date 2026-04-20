class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.14"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.14/officecli_0.2.14_darwin_arm64.tar.gz"
      sha256 "5c7c823089436bb767eb3c373c545bc61ee05d0a0d7617d4aa055c35f6508290"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.14/officecli_0.2.14_darwin_amd64.tar.gz"
      sha256 "1328593fe0db62930a36602fbeebdd22fcb3a0c6f71f5e394a4466ee9584c8b8"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
