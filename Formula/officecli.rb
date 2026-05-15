class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.66"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.66/officecli_0.2.66_darwin_arm64.tar.gz"
      sha256 "528c15b3c6ffb7dc9766184a0478dded36fd0fa7d3600a8f743d0cbb92d486fa"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.66/officecli_0.2.66_darwin_amd64.tar.gz"
      sha256 "fb802be0165c915acd079b4443429f1aae42815cd396dd883222ee813cd6fc0e"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
