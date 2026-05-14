class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.59"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.59/officecli_0.2.59_darwin_arm64.tar.gz"
      sha256 "3077754e052e9e8afef1d27c8d16545f62687aaca69c85a0a373f4821c630e9f"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.59/officecli_0.2.59_darwin_amd64.tar.gz"
      sha256 "0a6af499eb41b53db545ef6381b4f4624cc8053c6370b342e63afb4a45127360"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
