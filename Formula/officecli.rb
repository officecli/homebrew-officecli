class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.20"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.20/officecli_0.2.20_darwin_arm64.tar.gz"
      sha256 "a51fdb6236fc9ccb21354092bffdf7f3ec4631e957abb707ec1e368971923d35"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.20/officecli_0.2.20_darwin_amd64.tar.gz"
      sha256 "7329657dc7423570abf13e9057dd6573b088d6d48555301017b9b489b0fc4f4a"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
