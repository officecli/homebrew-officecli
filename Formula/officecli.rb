class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.4"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.4/officecli_0.2.4_darwin_arm64.tar.gz"
      sha256 "e9b04f605a52a2d58697de44ddfe0ef72d7eb10ee5e4b9fe373bc413893de5b7"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.4/officecli_0.2.4_darwin_amd64.tar.gz"
      sha256 "11383d9243ff7a1132aa62e401db7d4f668883e052948ad921e565e91d869733"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
