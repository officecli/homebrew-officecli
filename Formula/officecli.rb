class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.60"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.60/officecli_0.2.60_darwin_arm64.tar.gz"
      sha256 "b044e4bb8f579e1b8df0fd225b9a9d19a8063d82ef3e2b59202a609f4864cda9"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.60/officecli_0.2.60_darwin_amd64.tar.gz"
      sha256 "841ad22e9381c18b1d3f6a8b90ad989650b8c63363445075a36dd01114887242"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
