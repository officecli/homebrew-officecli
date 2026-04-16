class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.12"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.12/officecli_0.2.12_darwin_arm64.tar.gz"
      sha256 "ad8d0cb112bc1885bf03c6d68f12f01c455e7c8d972decee1e53d89f4b6edf71"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.12/officecli_0.2.12_darwin_amd64.tar.gz"
      sha256 "317ac59cf264ab1dff0fad43d79f32ec23e9cfa646ca015ac93d85c4265e106e"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
