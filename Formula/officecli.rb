class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.55"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.55/officecli_0.2.55_darwin_arm64.tar.gz"
      sha256 "32cdffd60fefcf19f3d82fcdff2e600132144ce3927d5fda010945a3d05ffb2b"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.55/officecli_0.2.55_darwin_amd64.tar.gz"
      sha256 "65ca0cf088a36e8b57dd3e217266c09d0de0bd68e2f0e4945238deadac18f36d"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
