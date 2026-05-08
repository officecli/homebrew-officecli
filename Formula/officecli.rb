class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.38"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.38/officecli_0.2.38_darwin_arm64.tar.gz"
      sha256 "914010003398ad5b8471bd2ba8a8bd7638412342c040f3badb2a74d3ea949d21"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.38/officecli_0.2.38_darwin_amd64.tar.gz"
      sha256 "4ffda925fe9851eaf4e10de7eb161f7038e69637b786e9ee74c6b5dc86258283"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
