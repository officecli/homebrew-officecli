class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.37"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.37/officecli_0.2.37_darwin_arm64.tar.gz"
      sha256 "d24f7a6ed1e22b835bc947a8a312b1f15343f422dd53c2b652beb19232003224"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.37/officecli_0.2.37_darwin_amd64.tar.gz"
      sha256 "89a699e60f305157153b8098a3e983ae2d4df377b8650bdaaafc2eb3362e653a"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
