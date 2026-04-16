class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.9/officecli_0.2.9_darwin_arm64.tar.gz"
      sha256 "2e647729bf7cb842947820f6056d4d81e8c1937ed41403c1bafa7ec4b4120ee1"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.9/officecli_0.2.9_darwin_amd64.tar.gz"
      sha256 "76e164fe2ee848d05ce2018c231bed4e7a770d1a02332a3fb7d846a9caaa9830"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
