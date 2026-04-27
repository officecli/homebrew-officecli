class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.25"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.25/officecli_0.2.25_darwin_arm64.tar.gz"
      sha256 "2ba3cb1f58b8767e7378dfaf861317d470e91594f03c657968c7ea28be3748ad"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.25/officecli_0.2.25_darwin_amd64.tar.gz"
      sha256 "e52f23fd88bc3ae71f2371546dbaee705f375a332d1fea971e9ad88395c2b457"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
