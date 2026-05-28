class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.105"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.105/officecli_0.2.105_darwin_arm64.tar.gz"
      sha256 "01bbedd5c22ac750c7f6b4331930e0593c5dcaa28113137c447c1ab3bd06b6c4"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.105/officecli_0.2.105_darwin_amd64.tar.gz"
      sha256 "bdedd4eab2d33cd7d2e883394eb13d74f14c91447abf104c0f42a73bc2b83e43"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
