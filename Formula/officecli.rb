class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.70"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.70/officecli_0.2.70_darwin_arm64.tar.gz"
      sha256 "245e8d154c26e09229ccce429868d8ee25daf81822875f6ec339d02eb744d9f6"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.70/officecli_0.2.70_darwin_amd64.tar.gz"
      sha256 "a63df848dc75c3690c34685bfc39cd2c52f038b4ba75525a72d56713d7bfce27"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
