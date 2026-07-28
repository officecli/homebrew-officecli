class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.121"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.121/officecli_0.2.121_darwin_arm64.tar.gz"
      sha256 "d1ae32360b7b22838b38fdbac6d92127d8b19602a2306d919d1e9b38cda2cedd"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.121/officecli_0.2.121_darwin_amd64.tar.gz"
      sha256 "015b660e9d330864a705ebad02b25f5663d9eae3223dd3aef78260e2553ab538"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
