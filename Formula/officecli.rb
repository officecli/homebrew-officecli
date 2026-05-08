class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.47"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.47/officecli_0.2.47_darwin_arm64.tar.gz"
      sha256 "ffb67db528d5cf5f19dd3596a338dcca66a6294059a993a2822b80209dc7f602"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.47/officecli_0.2.47_darwin_amd64.tar.gz"
      sha256 "39277194d9f72b740f710de38368f9125644756bfa79afa8d4a02cd96c3f221f"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
