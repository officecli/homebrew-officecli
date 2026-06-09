class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.112"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.112/officecli_0.2.112_darwin_arm64.tar.gz"
      sha256 "10e7f101f431f0f9c4aa2b702c651d27c6a1ec792f1c684f3c36a4ca64f517b3"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.112/officecli_0.2.112_darwin_amd64.tar.gz"
      sha256 "d35f0903849541efbff8dfe6a5f889b582517a2d8d0f6a3df8d1073ceaaec4d7"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
