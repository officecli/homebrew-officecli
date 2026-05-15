class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.65"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.65/officecli_0.2.65_darwin_arm64.tar.gz"
      sha256 "b722b643df83c9629be0938e5f52532654a9d03bfbe46c023f3149ccc15d6a04"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.65/officecli_0.2.65_darwin_amd64.tar.gz"
      sha256 "b3ac8d0eafa42224f4c611b18b54e92c75060097bda66e0f5bc95f65ac051385"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
