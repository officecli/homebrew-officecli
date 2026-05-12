class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.54"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.54/officecli_0.2.54_darwin_arm64.tar.gz"
      sha256 "781a47d75775e2dca44bc1062b7358b9448a311748f7a62d8668c0bcb4d1ff13"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.54/officecli_0.2.54_darwin_amd64.tar.gz"
      sha256 "aaa1a492303a6225c95550145b74bea137ea5d7fb1906b9d41df911630a2b112"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
