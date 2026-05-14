class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.56"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.56/officecli_0.2.56_darwin_arm64.tar.gz"
      sha256 "2a97a3f1bb691c92fb8c95000e2eaf229239324a94ff80b9da83e79f9ab2ba20"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.56/officecli_0.2.56_darwin_amd64.tar.gz"
      sha256 "173ce960d9b06df777ae2653bdfe76bf82fe3eca467084135a4ed0f82ea7ea98"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
