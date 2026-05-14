class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.57"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.57/officecli_0.2.57_darwin_arm64.tar.gz"
      sha256 "db68e8d3021ce401bbfab4c9a1f0f7100019ead76329a75f49b001b9e00001bc"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.57/officecli_0.2.57_darwin_amd64.tar.gz"
      sha256 "6bf446d9fe483b1bd2cc99c21357b840aa1d69aee67d0df1ab0f3911e1a2a90a"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
