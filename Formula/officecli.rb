class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.100"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.100/officecli_0.2.100_darwin_arm64.tar.gz"
      sha256 "78695e21663bd3e2782cd39b92fd6c48138d3b25a178a7d08df03b086cac5ea3"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.100/officecli_0.2.100_darwin_amd64.tar.gz"
      sha256 "972ca11589f5df4f05483cebb73e3de527b63070c2dc0104a7fab5d4a942b1d0"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
