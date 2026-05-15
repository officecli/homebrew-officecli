class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.64"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.64/officecli_0.2.64_darwin_arm64.tar.gz"
      sha256 "b2fd5906872fbcf42cf53db0a160147dedf84e68b24eaf0c23dbae4284e81eef"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.64/officecli_0.2.64_darwin_amd64.tar.gz"
      sha256 "881aeed5c27f3375a4993af81acc8eafabe9347082710e25265dfd2a0633d9ec"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
