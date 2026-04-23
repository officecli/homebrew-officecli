class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.21"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.21/officecli_0.2.21_darwin_arm64.tar.gz"
      sha256 "1ff93c1ee129c68610a1438c31e3f6f95b1a335b9851e73f5bc5d14c0f837d64"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.21/officecli_0.2.21_darwin_amd64.tar.gz"
      sha256 "63db4aa1d9d81566a00171521d0fe50050da7a31a9aaf8266ecc433d36e7e40b"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
