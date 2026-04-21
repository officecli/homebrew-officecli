class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.18"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.18/officecli_0.2.18_darwin_arm64.tar.gz"
      sha256 "db53a2cb0791a744c471ce211a88ab5ac678958a34a9b7f1118fb77d53472f58"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.18/officecli_0.2.18_darwin_amd64.tar.gz"
      sha256 "ee19742d6b0f1189ed68523b2f1d5db228956024bb5110f5ab2bace15850d701"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
