class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.120"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.120/officecli_0.2.120_darwin_arm64.tar.gz"
      sha256 "8eb23b965b8721c33791f9838086181b20d9903a042207ddf9b3de9ac41e45a9"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.120/officecli_0.2.120_darwin_amd64.tar.gz"
      sha256 "4267a898c3f8eb544a47c3ce91acfd953c183a6df76538dafdf34da2b2f2be8c"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
