class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.13"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.13/officecli_0.2.13_darwin_arm64.tar.gz"
      sha256 "a763a4f98dc4441dc77eceebd687dd95c2d0c181a6b30b611fd9e0f5256d1754"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.13/officecli_0.2.13_darwin_amd64.tar.gz"
      sha256 "451997ca0b10b54fab9876002d7ed9f983c8e5ebc7266c44195ab7c3708a7fe0"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
