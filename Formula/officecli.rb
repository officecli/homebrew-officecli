class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.69"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.69/officecli_0.2.69_darwin_arm64.tar.gz"
      sha256 "e6e367682cb2a3ee61976afb51277f6b4bf0e261b4f4d2e33152510988473b7c"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.69/officecli_0.2.69_darwin_amd64.tar.gz"
      sha256 "79c947b86b83ebce8c68ea3869b8fb74973b367fd434ad5d6418179625ba1ea2"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
