class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.43"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.43/officecli_0.2.43_darwin_arm64.tar.gz"
      sha256 "7b15582eb18a7990f963e4e410984815f857d46134916554b693a67511124882"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.43/officecli_0.2.43_darwin_amd64.tar.gz"
      sha256 "058ae048bc71452c5a5a40d5ce8ada674ea8ba4602a15306a4473b7099fa9ada"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
