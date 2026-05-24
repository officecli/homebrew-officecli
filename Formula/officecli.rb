class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.92"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.92/officecli_0.2.92_darwin_arm64.tar.gz"
      sha256 "9144077bd9f5b764526dd193b6fb35a7f644e29dbcd978db5ce924b7c85df908"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.92/officecli_0.2.92_darwin_amd64.tar.gz"
      sha256 "4696d255d17cdc7e0556723a60f149a7c5b942daaff49d05e29dbac83f7ce9d6"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
