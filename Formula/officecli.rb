class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.6/officecli_0.2.6_darwin_arm64.tar.gz"
      sha256 "7070ff9ca1dd6cdd5862559775c6a729c41af9efe4b4af07c1c3249f3732faf9"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.6/officecli_0.2.6_darwin_amd64.tar.gz"
      sha256 "1101c4ad7109a8a6a6fde905eced8fc35956ccc424c86a89107860368dddda64"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
