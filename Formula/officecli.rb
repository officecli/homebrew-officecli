class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.32"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.32/officecli_0.2.32_darwin_arm64.tar.gz"
      sha256 "f6d20205efd73d2314d50feea2738cc5e30b6b519961d9ad92169f1302b66a55"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.32/officecli_0.2.32_darwin_amd64.tar.gz"
      sha256 "7b94083772f7507b8cf82d2077a1036aeb2022cd63d650dfc2617ab7528cd47b"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
