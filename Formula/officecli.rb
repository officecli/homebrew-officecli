class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.109"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.109/officecli_0.2.109_darwin_arm64.tar.gz"
      sha256 "9f79ec9b3348517d03e8731334be7caa8eafc031fcd539345135b0757dcf8591"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.109/officecli_0.2.109_darwin_amd64.tar.gz"
      sha256 "af6f47eb5e5ae44b640692784ada2bc3da3b0cb3ecf47f7d26de4a0840b7fc6b"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
