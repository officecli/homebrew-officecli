class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.7/officecli_0.2.7_darwin_arm64.tar.gz"
      sha256 "c3b848723b971890c6846ad6ca14bfa52d25de933a2dba84fb708adc8321641c"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.7/officecli_0.2.7_darwin_amd64.tar.gz"
      sha256 "49fb1baa76f437a2757a26daab7734697640f0a36ceca7290220b0a285c84956"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
