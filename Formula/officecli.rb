class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.115"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.115/officecli_0.2.115_darwin_arm64.tar.gz"
      sha256 "f2f886f5632ad697b1a7a1214a6f7e52ef27503472a650bc5d1bceb14e48962a"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.115/officecli_0.2.115_darwin_amd64.tar.gz"
      sha256 "eb2e21b60e6e871903e9375d5d296b99523274b9eca8e5ddc3f2abbaf3002f69"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
