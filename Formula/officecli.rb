class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.53"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.53/officecli_0.2.53_darwin_arm64.tar.gz"
      sha256 "f1c8b8e1115a22750949fb13ecfcafaac45dd409c62925cb9f979258a9a37014"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.53/officecli_0.2.53_darwin_amd64.tar.gz"
      sha256 "f932bf4b2fa3872b648a3b28a9f4bc940090bc1f26325ee9c071d9a49eaac5f9"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
