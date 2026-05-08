class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.41"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.41/officecli_0.2.41_darwin_arm64.tar.gz"
      sha256 "ebdbd48ff9c858e5de29dd8a9b148df11a52ba948f5c222d31aa8c45d30a18da"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.41/officecli_0.2.41_darwin_amd64.tar.gz"
      sha256 "bf7b20941c14ab253e45c906d83e4af5cc0e3c01039a44cc91fcf6511461c955"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
