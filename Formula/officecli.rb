class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.113"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.113/officecli_0.2.113_darwin_arm64.tar.gz"
      sha256 "baec0b79a64575306d06a72c59e42b93bd993c113a50898e8fef16e928930fa2"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.113/officecli_0.2.113_darwin_amd64.tar.gz"
      sha256 "6a06967aabe135bfe894d15ecaaffc85ff21e227a8dee445291352391b3e0a9a"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
