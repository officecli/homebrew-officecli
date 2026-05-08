class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.46"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.46/officecli_0.2.46_darwin_arm64.tar.gz"
      sha256 "9791b7e8d088ef124c94d7a3a836adf6d4160d2ecdaaf8497d63a86890252b20"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.46/officecli_0.2.46_darwin_amd64.tar.gz"
      sha256 "4fb6563209c7a515fc8e5351080f89785d78df597b07bbd51d58d4098ec2a36d"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
