class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.116"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.116/officecli_0.2.116_darwin_arm64.tar.gz"
      sha256 "67fd4259184bcdc6254eec6e5ed3351a673c7d5c425dae7d87038f35d19fe8ff"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.116/officecli_0.2.116_darwin_amd64.tar.gz"
      sha256 "914d283f1f1aa243b85b2d03a66ffbbb61f6ecd8a3766dbcaeb172956f5c141f"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
