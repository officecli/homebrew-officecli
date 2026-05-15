class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.67"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.67/officecli_0.2.67_darwin_arm64.tar.gz"
      sha256 "664bb24e501ec7c895ea295586092e55387cd21384c1ff4f541e5508f8646840"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.67/officecli_0.2.67_darwin_amd64.tar.gz"
      sha256 "344dc2b5e47ead118595acd9565dd0bb943bd0ec32e6c1e86b08d105be3cf4d5"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
