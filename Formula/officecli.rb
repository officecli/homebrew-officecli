class Officecli < Formula
  desc "Closed-source Office document generation CLI"
  homepage "https://github.com/officecli/officecli-dist"
  version "0.2.49"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.49/officecli_0.2.49_darwin_arm64.tar.gz"
      sha256 "f10bcc1d7c2259c6ee30784c85fbbca4eab704453112d9de510303625dea442d"
    else
      url "https://github.com/officecli/officecli-dist/releases/download/v0.2.49/officecli_0.2.49_darwin_amd64.tar.gz"
      sha256 "50cf14de8c98cf2a4e6f857fd59cc8e2017926a9b53838d74e03e7a68ca1781d"
    end
  end

  def install
    bin.install "officecli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/officecli --version")
  end
end
