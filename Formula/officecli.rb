class OfficeCli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.1/officecli_0.2.1_darwin_arm64.tar.gz"
      sha256 "36109e9408703097b7dfd4ff10c24ede0c462df5b56caad1b34f6ef3701a76de"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.1/officecli_0.2.1_darwin_amd64.tar.gz"
      sha256 "cb8ee285cdafd447bd5673e394d6d47b69e1873022570890bb92adabc7927cd7"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
