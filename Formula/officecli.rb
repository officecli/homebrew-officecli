class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.110"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.110/officecli_0.2.110_darwin_arm64.tar.gz"
      sha256 "2a63564ce680a5a6588af4524ffdb6d391529e4b5a96b31f38d5d35c09f5c229"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.110/officecli_0.2.110_darwin_amd64.tar.gz"
      sha256 "07bd5d75429b1cc76c7a2cb116b6c1cbf7606477ee505a4ea49363c88fd9e7ca"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
