class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.52"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.52/officecli_0.2.52_darwin_arm64.tar.gz"
      sha256 "001052ac69d7cccbdd03c177f567e6be7f8d0a619cb6a4ea4a74fc6a0c4fe4ef"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.52/officecli_0.2.52_darwin_amd64.tar.gz"
      sha256 "be79d6465833d290ab2b588a029548c2f5df367e1f8f6b67dada4a4d8901fa41"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
