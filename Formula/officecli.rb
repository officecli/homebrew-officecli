class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.98"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.98/officecli_0.2.98_darwin_arm64.tar.gz"
      sha256 "7e0982218c18ed7030d2d3f708229275ffb7b89c5ae6b0bd4ebc29e23bf9adcd"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.98/officecli_0.2.98_darwin_amd64.tar.gz"
      sha256 "a562d4be0ff0f74b88bfbbeb11034d5830384fd5b01dd7abd952ccdd4be97e86"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
