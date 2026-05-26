class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.101"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.101/officecli_0.2.101_darwin_arm64.tar.gz"
      sha256 "8d7b32d4aa429874571056d048d8138cc1e951cb3999a7b7871790915cdadf03"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.101/officecli_0.2.101_darwin_amd64.tar.gz"
      sha256 "5cc111a9b7d72e5534a8e08c8b48fa184a2fb58cd5c1ee1ee2f8fb292bc0ff86"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
